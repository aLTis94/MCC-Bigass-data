
(global boolean is_sprinting0 false)
(global boolean is_sprinting1 false)

(script continuous sprint0
	(if
		(unit_get_current_flashlight_state (unit (list_get (players) 0)))
		
		(if 
			(= is_sprinting0 false)
			(begin	
				(units_set_desired_flashlight_state (list_get (players) 0) false)
				(set is_sprinting0 true)
				(object_create_anew sprint0)
				
				(object_set_collideable sprint0 false)
				(object_set_collideable (list_get (players) 0) false)
				
				(vehicle_load_magic (unit (list_get (players) 0)) "" sprint0)
				(sleep 1)
				(vehicle_unload (unit (list_get (players) 0)) "")
				(sleep 1)
				
				(objects_attach (list_get (players) 0) "sprint" sprint0 "body")
				(objects_detach (list_get (players) 0) sprint0)
				
				(sleep 2)
				(vehicle_load_magic sprint0 "" (unit (list_get (players) 0)))
				
				(object_set_collideable (list_get (players) 0) true)
				(object_set_collideable sprint0 true)
			)
			(set is_sprinting0 false)
		)
	)
	
	;; if leaving
	(if 
		(unit_get_current_flashlight_state sprint0)
		(begin
			(object_set_collideable sprint0 false)
			(vehicle_unload sprint0 "")
		)
	)
	
	;; if empty
	(if
		(= 0 (list_count (vehicle_riders sprint0)))
		(begin
			(object_destroy sprint0)
		)
	)
)

(script continuous sprint1
	(if
		(unit_get_current_flashlight_state (unit (list_get (players) 1)))
		
		(if 
			(= is_sprinting1 false)
			(begin	
				(units_set_desired_flashlight_state (list_get (players) 1) false)
				(set is_sprinting1 true)
				(object_create_anew sprint1)
				
				(object_set_collideable sprint1 false)
				(object_set_collideable (list_get (players) 1) false)
				
				(vehicle_load_magic (unit (list_get (players) 1)) "" sprint1)
				(sleep 1)
				(vehicle_unload (unit (list_get (players) 1)) "")
				(sleep 1)
				
				(objects_attach (list_get (players) 1) "sprint" sprint1 "body")
				(objects_detach (list_get (players) 1) sprint1)
				
				(sleep 2)
				(vehicle_load_magic sprint1 "" (unit (list_get (players) 1)))
				
				(object_set_collideable (list_get (players) 1) true)
				(object_set_collideable sprint1 true)
			)
			(set is_sprinting1 false)
		)
	)
	
	;; if leaving
	(if 
		(unit_get_current_flashlight_state sprint1)
		(begin
			(object_set_collideable sprint1 false)
			(vehicle_unload sprint1 "")
		)
	)
	
	;; if empty
	(if
		(= 0 (list_count (vehicle_riders sprint1)))
		(begin
			(object_destroy sprint1)
		)
	)
)