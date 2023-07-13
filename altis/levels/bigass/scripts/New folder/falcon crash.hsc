(global boolean server 0)
(global real f_health 100)
(script startup vehicles
	(if
		(>= (unit_get_health host_check) 0)
		(set server 1)
	)
)
(script continuous Le_Falcone
(if (volume_test_objects trigvol falcon1)
	(object_teleport falcon1 Le_falcone_flag)
)
)

(script continuous falcon
(if (= server 1)
	(begin
		(if (= (unit_get_health falcon1) 0.0)
			(begin
			(object_teleport altis gijs)
			(if (volume_test_objects landing falcon1)
			(begin
			(object_destroy falcon1)	
			(object_create falcon1)
			(object_teleport altis 14lol41))
)
)
)
)
			(object_teleport altis 14lol41)
)
		(if (= (unit_get_health billc) 0.0)
			(begin
			(unit_kill falcon1)
			(sleep 60))
			(object_create_anew billc)
)
(if (= server 0)
	(begin
		(if (= (unit_get_health falcon1) 0.0)
			(begin
			(if (volume_test_objects landing falcon1)
			(begin
			(object_destroy falcon1)	
)
)
)
)
)
)
)


(script continuous Le_Falcone2
(if (volume_test_objects trigvol falcon2)
	(object_teleport falcon2 Le_falcone_flag2)
)
)

(script continuous falcon_2
(if (= server 1)
	(begin
		(if (= (unit_get_health falcon2) 0.0)
			(begin
			(if (volume_test_objects landing2 falcon2)
			(begin
			(object_destroy falcon2)	
			(object_create falcon2)
)
)
)
)
)
)
(if (= server 0)
	(begin
		(if (= (unit_get_health falcon2) 0.0)
			(begin
			(if (volume_test_objects landing2 falcon2)
			(begin
			(object_destroy falcon2)	
)
)
)
)
)
)
)