
(global boolean is_sprinting1 false)

(script continuous sprint
	(if
		(unit_get_current_flashlight_state (unit (list_get (players) 0)))
		(if 
			(= is_sprinting1 false)
			(begin
				(set is_sprinting1 true)
				(object_create_anew sprint1)
				(objects_attach (list_get (players) 0) "" sprint1 "")
				;;(sleep 1)
				(objects_detach (list_get (players) 0) sprint1)
				;;(sleep 1)
				(vehicle_load_magic sprint1 "" (unit (list_get (players) 0)))
			)
			(set is_sprinting1 false)
		)
	)
	
	;; if leaving
	(if 
		(unit_get_current_flashlight_state sprint1)
		(vehicle_unload sprint1 "")
	)
	
	;; if empty
	(if
		(= 0 (list_count (vehicle_riders sprint1)))
		(object_destroy sprint1)
	)
)