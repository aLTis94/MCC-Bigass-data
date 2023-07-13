;;(script continuous lift
;;(if (volume_test_objects check (players))(device_set_position gate 1) (device_set_position gate 0))
;;)

;;(script continuous lift2
;;(if (volume_test_objects check2 (players))(device_set_position gate2 1) (device_set_position gate2 0))
;;)

(script continuous lift
	(if (= (device_get_position gate) 0) 
		(if (volume_test_objects check (players))
		(device_set_position gate 1))
			(begin
				(sleep 300)
				(device_set_position gate 0)
			)
	)
)

(script continuous lift2
	(if (= (device_get_position gate2) 0) 
		(if (volume_test_objects check2 (players))
		(device_set_position gate2 1))
			(begin
				(sleep 300)
				(device_set_position gate2 0)
			)
	)
)

(script continuous garage_door
(if (volume_test_objects garage1 (players))
(device_set_position dooor 1)
(if (= (device_get_position dooor) 1) (if (not (volume_test_objects close (players))) (device_set_position dooor 0))))
)

(script continuous breakables
(sleep 180)
(if (not (or (volume_test_objects break (players)) (volume_test_objects break2 (players)))) (breakable_surfaces_reset))
)








(global unit player0 none)
(global unit player1 none)
(global unit player2 none)
(global unit player3 none)
(global unit player4 none)
(global unit player5 none)
(global unit player6 none)
(global unit player7 none)
(global unit player8 none)
(global unit player9 none)
(global unit player10 none)
(global unit player11 none)
(global unit player12 none)
(global unit player13 none)
(global unit player14 none)
(global unit player15 none)

(global short num 0)

(global short killp0 0)
(global short killp1 0)
(global short killp2 0)
(global short killp3 0)
(global short killp4 0)
(global short killp5 0)
(global short killp6 0)
(global short killp7 0)
(global short killp8 0)
(global short killp9 0)
(global short killp10 0)
(global short killp11 0)
(global short killp12 0)
(global short killp13 0)
(global short killp14 0)
(global short killp15 0)

(script static unit player
(begin
(unit
(list_get
(players) num))))

(script continuous assign_variablez
(begin
(if
(!=
(unit_get_health check_vehicle) 0.00)
(sleep -1))
(if
(<=
(unit_get_health player0) 0.00)
(set player0 none))
(if
(<=
(unit_get_health player1) 0.00)
(set player1 none))
(if
(<=
(unit_get_health player2) 0.00)
(set player2 none))
(if
(<=
(unit_get_health player3) 0.00)
(set player3 none))
(if
(<=
(unit_get_health player4) 0.00)
(set player4 none))
(if
(<=
(unit_get_health player5) 0.00)
(set player5 none))
(if
(<=
(unit_get_health player6) 0.00)
(set player6 none))
(if
(<=
(unit_get_health player7) 0.00)
(set player7 none))
(if
(<=
(unit_get_health player8) 0.00)
(set player8 none))
(if
(<=
(unit_get_health player9) 0.00)
(set player9 none))
(if
(<=
(unit_get_health player10) 0.00)
(set player10 none))
(if
(<=
(unit_get_health player11) 0.00)
(set player11 none))
(if
(<=
(unit_get_health player12) 0.00)
(set player12 none))
(if
(<=
(unit_get_health player13) 0.00)
(set player13 none))
(if
(<=
(unit_get_health player14) 0.00)
(set player14 none))
(if
(<=
(unit_get_health player15) 0.00)
(set player15 none))
(if
(and
(!= player0 (player))
(!= player1 (player))
(!= player2 (player))
(!= player3 (player))
(!= player4 (player))
(!= player5 (player))
(!= player6 (player))
(!= player7 (player))
(!= player8 (player))
(!= player9 (player))
(!= player10 (player))
(!= player11 (player))
(!= player12 (player))
(!= player13 (player))
(!= player14 (player))
(!= player15 (player))
(!= none (player)))
(if
(= player0 none)
(begin
(set player0 (player)))
(if
(= player1 none)
(begin
(set player1 (player)))
(if
(= player2 none)
(begin
(set player2 (player)))
(if
(= player3 none)
(begin
(set player3 (player)))
(if
(= player4 none)
(begin
(set player4 (player)))
(if
(= player5 none)
(begin
(set player5 (player)))
(if
(= player6 none)
(begin
(set player6 (player)))
(if
(= player7 none)
(begin
(set player7 (player)))
(if
(= player8 none)
(begin
(set player8 (player)))
(if
(= player9 none)
(begin
(set player9 (player)))
(if
(= player10 none)
(begin
(set player10 (player)))
(if
(= player11 none)
(begin
(set player11 (player)))
(if
(= player12 none)
(begin
(set player12 (player)))
(if
(= player13 none)
(begin
(set player13 (player)))
(if
(= player14 none)
(begin
(set player14 (player)))
(if
(= player15 none)
(begin
(set player15 (player))))))))))))))))))))
(if
(< num
(list_count
(players)))
(set num
(+ num 1.00))
(set num 0))))

(script startup destroy_warnings
(begin
(object_destroy warn)
(object_destroy warn1)
(object_destroy warn2)
(object_destroy warn3)
(object_destroy warn4)
(object_destroy warn5)
(object_destroy warn6)
(object_destroy warn7)
(object_destroy warn8)
(object_destroy warn9)
(object_destroy warn10)
(object_destroy warn11)
(object_destroy warn12)
(object_destroy warn13)
(object_destroy warn14)
(object_destroy warn15)))


(script continuous   warning0
	(begin
		(if
			(> (unit_get_health player0) 0.00)
			(if
				(or
					(or
						(or
							(volume_test_object field player0)
							(volume_test_object field1 player0)
						)
						(volume_test_object field2 player0)
					)
					(volume_test_object field3 player0)
				)
				(begin
					(set killp0
					(+ killp0 1.00))
					(if
						(> killp0 17)
						(begin
						(effect_new_on_object_marker my_weapons\a player0 head)
						(if
							(>
							(unit_get_health player0) 0.00)
							(unit_kill player0)
						)
						(set killp0 0))
						(begin
						(object_create warn)
						(objects_attach player0 flashlight warn "")
						(objects_detach player0 warn)
						)
					)
				)
				(begin
				(set killp0 0)
				)
			)
			(set killp0 0)
		)
		(sleep 10)
		(object_destroy warn)
	)
)

(script continuous   warning1
(begin
(if
(or
(or
(or
(volume_test_object field player1)
(volume_test_object field1 player1))
(volume_test_object field2 player1))
(volume_test_object field3 player1))
(begin
(set killp1
(+ killp1 1.00))
(if
(> killp1 17)
(begin
(effect_new_on_object_marker my_weapons\a player1 head)
(if
(>
(unit_get_health player1) 0.00)
(unit_kill player1))
(set killp1 0)))
(object_create warn1)
(objects_attach player1 flashlight warn1 "")
(objects_detach player1 warn1)
(sleep 10)
(object_destroy warn1))
(begin
(set killp1 0)
(sleep 5)))))

(script continuous   warning2
(begin
(if
(or
(or
(or
(volume_test_object field player2)
(volume_test_object field1 player2))
(volume_test_object field2 player2))
(volume_test_object field3 player2))
(begin
(set killp2
(+ killp2 1.00))
(if
(> killp2 17)
(begin
(effect_new_on_object_marker my_weapons\a player2 head)
(if
(>
(unit_get_health player2) 0.00)
(unit_kill player2))
(set killp2 0)))
(object_create warn2)
(objects_attach player2 flashlight warn2 "")
(objects_detach player2 warn2)
(sleep 10)
(object_destroy warn2))
(begin
(set killp2 0)
(sleep 5)))))

(script continuous   warning3
(begin
(if
(or
(or
(or
(volume_test_object field player3)
(volume_test_object field1 player3))
(volume_test_object field2 player3))
(volume_test_object field3 player3))
(begin
(set killp3
(+ killp3 1.00))
(if
(> killp3 17)
(begin
(effect_new_on_object_marker my_weapons\a player3 head)
(if
(>
(unit_get_health player3) 0.00)
(unit_kill player3))
(set killp3 0)))
(object_create warn3)
(objects_attach player3 flashlight warn3 "")
(objects_detach player3 warn3)
(sleep 10)
(object_destroy warn3))
(begin
(set killp3 0)
(sleep 5)))))

(script continuous   warning4
(begin
(if
(or
(or
(or
(volume_test_object field player4)
(volume_test_object field1 player4))
(volume_test_object field2 player4))
(volume_test_object field3 player4))
(begin
(set killp4
(+ killp4 1.00))
(if
(> killp4 17)
(begin
(effect_new_on_object_marker my_weapons\a player4 head)
(if
(>
(unit_get_health player4) 0.00)
(unit_kill player4))
(set killp4 0)))
(object_create warn4)
(objects_attach player4 flashlight warn4 "")
(objects_detach player4 warn4)
(sleep 10)
(object_destroy warn4))
(begin
(set killp4 0)
(sleep 5)))))

(script continuous   warning5
(begin
(if
(or
(or
(or
(volume_test_object field player5)
(volume_test_object field1 player5))
(volume_test_object field2 player5))
(volume_test_object field3 player5))
(begin
(set killp5
(+ killp5 1.00))
(if
(> killp5 17)
(begin
(effect_new_on_object_marker my_weapons\a player5 head)
(if
(>
(unit_get_health player5) 0.00)
(unit_kill player5))
(set killp5 0)))
(object_create warn5)
(objects_attach player5 flashlight warn5 "")
(objects_detach player5 warn5)
(sleep 10)
(object_destroy warn5))
(begin
(set killp5 0)
(sleep 5)))))

(script continuous   warning6
(begin
(if
(or
(or
(or
(volume_test_object field player6)
(volume_test_object field1 player6))
(volume_test_object field2 player6))
(volume_test_object field3 player6))
(begin
(set killp6
(+ killp6 1.00))
(if
(> killp6 17)
(begin
(effect_new_on_object_marker my_weapons\a player6 head)
(if
(>
(unit_get_health player6) 0.00)
(unit_kill player6))
(set killp6 0)))
(object_create warn6)
(objects_attach player6 flashlight warn6 "")
(objects_detach player6 warn6)
(sleep 10)
(object_destroy warn6))
(begin
(set killp6 0)
(sleep 5)))))

(script continuous   warning7
(begin
(if
(or
(or
(or
(volume_test_object field player7)
(volume_test_object field1 player7))
(volume_test_object field2 player7))
(volume_test_object field3 player7))
(begin
(set killp7
(+ killp7 1.00))
(if
(> killp7 17)
(begin
(effect_new_on_object_marker my_weapons\a player7 head)
(if
(>
(unit_get_health player7) 0.00)
(unit_kill player7))
(set killp7 0)))
(object_create warn7)
(objects_attach player7 flashlight warn7 "")
(objects_detach player7 warn7)
(sleep 10)
(object_destroy warn7))
(begin
(set killp7 0)
(sleep 5)))))

(script continuous   warning8
(begin
(if
(or
(or
(or
(volume_test_object field player8)
(volume_test_object field1 player8))
(volume_test_object field2 player8))
(volume_test_object field3 player8))
(begin
(set killp8
(+ killp8 1.00))
(if
(> killp8 18)
(begin
(effect_new_on_object_marker my_weapons\a player8 head)
(if
(>
(unit_get_health player8) 0.00)
(unit_kill player8))
(set killp8 0)))
(object_create warn8)
(objects_attach player8 flashlight warn8 "")
(objects_detach player8 warn8)
(sleep 10)
(object_destroy warn8))
(begin
(set killp8 0)
(sleep 5)))))

(script continuous   warning9
(begin
(if
(or
(or
(or
(volume_test_object field player9)
(volume_test_object field1 player9))
(volume_test_object field2 player9))
(volume_test_object field3 player9))
(begin
(set killp9
(+ killp9 1.00))
(if
(> killp9 19)
(begin
(effect_new_on_object_marker my_weapons\a player9 head)
(if
(>
(unit_get_health player9) 0.00)
(unit_kill player9))
(set killp9 0)))
(object_create warn9)
(objects_attach player9 flashlight warn9 "")
(objects_detach player9 warn9)
(sleep 10)
(object_destroy warn9))
(begin
(set killp9 0)
(sleep 5)))))

(script continuous   warning10
(begin
(if
(or
(or
(or
(volume_test_object field player10)
(volume_test_object field1 player10))
(volume_test_object field2 player10))
(volume_test_object field3 player10))
(begin
(set killp10
(+ killp10 1.00))
(if
(> killp10 110)
(begin
(effect_new_on_object_marker my_weapons\a player10 head)
(if
(>
(unit_get_health player10) 0.00)
(unit_kill player10))
(set killp10 0)))
(object_create warn10)
(objects_attach player10 flashlight warn10 "")
(objects_detach player10 warn10)
(sleep 10)
(object_destroy warn10))
(begin
(set killp10 0)
(sleep 5)))))

(script continuous   warning11
(begin
(if
(or
(or
(or
(volume_test_object field player11)
(volume_test_object field1 player11))
(volume_test_object field2 player11))
(volume_test_object field3 player11))
(begin
(set killp11
(+ killp11 1.00))
(if
(> killp11 111)
(begin
(effect_new_on_object_marker my_weapons\a player11 head)
(if
(>
(unit_get_health player11) 0.00)
(unit_kill player11))
(set killp11 0)))
(object_create warn11)
(objects_attach player11 flashlight warn11 "")
(objects_detach player11 warn11)
(sleep 10)
(object_destroy warn11))
(begin
(set killp11 0)
(sleep 5)))))

(script continuous   warning12
(begin
(if
(or
(or
(or
(volume_test_object field player12)
(volume_test_object field1 player12))
(volume_test_object field2 player12))
(volume_test_object field3 player12))
(begin
(set killp12
(+ killp12 1.00))
(if
(> killp12 112)
(begin
(effect_new_on_object_marker my_weapons\a player12 head)
(if
(>
(unit_get_health player12) 0.00)
(unit_kill player12))
(set killp12 0)))
(object_create warn12)
(objects_attach player12 flashlight warn12 "")
(objects_detach player12 warn12)
(sleep 10)
(object_destroy warn12))
(begin
(set killp12 0)
(sleep 5)))))

(script continuous   warning13
(begin
(if
(or
(or
(or
(volume_test_object field player13)
(volume_test_object field1 player13))
(volume_test_object field2 player13))
(volume_test_object field3 player13))
(begin
(set killp13
(+ killp13 1.00))
(if
(> killp13 113)
(begin
(effect_new_on_object_marker my_weapons\a player13 head)
(if
(>
(unit_get_health player13) 0.00)
(unit_kill player13))
(set killp13 0)))
(object_create warn13)
(objects_attach player13 flashlight warn13 "")
(objects_detach player13 warn13)
(sleep 10)
(object_destroy warn13))
(begin
(set killp13 0)
(sleep 5)))))

(script continuous   warning14
(begin
(if
(or
(or
(or
(volume_test_object field player14)
(volume_test_object field1 player14))
(volume_test_object field2 player14))
(volume_test_object field3 player14))
(begin
(set killp14
(+ killp14 1.00))
(if
(> killp14 114)
(begin
(effect_new_on_object_marker my_weapons\a player14 head)
(if
(>
(unit_get_health player14) 0.00)
(unit_kill player14))
(set killp14 0)))
(object_create warn14)
(objects_attach player14 flashlight warn14 "")
(objects_detach player14 warn14)
(sleep 10)
(object_destroy warn14))
(begin
(set killp14 0)
(sleep 5)))))

(script continuous   warning15
(begin
(if
(or
(or
(or
(volume_test_object field player15)
(volume_test_object field1 player15))
(volume_test_object field2 player15))
(volume_test_object field3 player15))
(begin
(set killp15
(+ killp15 1.00))
(if
(> killp15 115)
(begin
(effect_new_on_object_marker my_weapons\a player15 head)
(if
(>
(unit_get_health player15) 0.00)
(unit_kill player15))
(set killp15 0)))
(object_create warn15)
(objects_attach player15 flashlight warn15 "")
(objects_detach player15 warn15)
(sleep 10)
(object_destroy warn15))
(begin
(set killp15 0)
(sleep 5)))))