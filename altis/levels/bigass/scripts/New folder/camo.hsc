(global short p0time 0)
(global short p1time 0)
(global short p2time 0)
(global short p3time 0)
(global short p4time 0)
(global short p5time 0)

(script continuous camo
(if  (!= (unit_get_health host_check) 0.0) (sleep -1))
(if (= p0time 1) 
	(begin (unit_set_desired_flashlight_state player0 0)
	(sleep 1200)
	(object_create ready)
	(objects_attach player0 "flashlight" ready "" )
	(objects_detach player0 ready)
	(sleep 15)
	(object_create ready)
	(objects_attach player0 "flashlight" ready "" )
	(objects_detach player0 ready)
	(set p0time 0)
	)
	)
(if (= (unit_get_current_flashlight_state player0 ) 1) 
	(begin
	(set p0time (+ p0time 1))
	(object_create camo0)
	(objects_attach player0 "flashlight" camo0 "" )
	(objects_detach player0 camo0)
	(sleep 600)
	)
	)
(if (< p0time 0) (set p0time 0))
)


(script continuous camo1
(if  (!= (unit_get_health host_check) 0.0) (sleep -1))
(if (= p1time 1) 
	(begin (unit_set_desired_flashlight_state player1 0)
	(sleep 1200)
	(object_create ready1)
	(objects_attach player1 "flashlight" ready1 "" )
	(objects_detach player1 ready1)
	(sleep 15)
	(object_create ready1)
	(objects_attach player1 "flashlight" ready1 "" )
	(objects_detach player1 ready1)
	(set p1time 0)
	)
	)
(if (= (unit_get_current_flashlight_state player1 ) 1) 
	(begin
	(set p1time (+ p1time 1))
	(object_create camo1)
	(objects_attach player1 "flashlight" camo1 "" )
	(objects_detach player1 camo1)
	(sleep 600)
	)
	)
(if (< p1time 0) (set p1time 0))
)


(script continuous camo2
(if  (!= (unit_get_health host_check) 0.0) (sleep -1))
(if (= p2time 1) 
	(begin (unit_set_desired_flashlight_state player2 0)
	(sleep 1200)
	(object_create ready2)
	(objects_attach player2 "flashlight" ready2 "" )
	(objects_detach player2 ready2)
	(sleep 15)
	(object_create ready2)
	(objects_attach player2 "flashlight" ready2 "" )
	(objects_detach player2 ready2)
	(set p2time 0)
	)
	)
(if (= (unit_get_current_flashlight_state player2 ) 1) 
	(begin
	(set p2time (+ p2time 1))
	(object_create camo2)
	(objects_attach player2 "flashlight" camo2 "" )
	(objects_detach player2 camo2)
	(sleep 600)
	)
	)
(if (< p2time 0) (set p2time 0))
)


(script continuous camo3
(if  (!= (unit_get_health host_check) 0.0) (sleep -1))
(if (= p3time 1) 
	(begin (unit_set_desired_flashlight_state player3 0)
	(sleep 1200)
	(object_create ready3)
	(objects_attach player3 "flashlight" ready3 "" )
	(objects_detach player3 ready3)
	(sleep 15)
	(object_create ready3)
	(objects_attach player3 "flashlight" ready3 "" )
	(objects_detach player3 ready3)
	(set p3time 0)
	)
	)
(if (= (unit_get_current_flashlight_state player3 ) 1) 
	(begin
	(set p3time (+ p3time 1))
	(object_create camo3)
	(objects_attach player3 "flashlight" camo3 "" )
	(objects_detach player3 camo3)
	(sleep 600)
	)
	)
(if (< p3time 0) (set p3time 0))
)