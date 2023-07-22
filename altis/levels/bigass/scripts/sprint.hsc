
(global real min_speed 0.07)
  
(global damage destroyer "altis\weapons\sprint\sprint_destroyer")
(global object_definition sprint_weap "altis\weapons\sprint\sprint")

(global real temp 0)
(global real temp2 0)




;;Player specific variables

(global boolean is_sprinting0 false)
(global boolean is_sprinting1 false)
(global boolean is_sprinting2 false)
(global boolean is_sprinting3 false)
(global boolean is_sprinting4 false)
(global boolean is_sprinting5 false)
(global boolean is_sprinting6 false)
(global boolean is_sprinting7 false)
(global boolean is_sprinting8 false)
(global boolean is_sprinting9 false)
(global boolean is_sprinting10 false)
(global boolean is_sprinting11 false)
(global boolean is_sprinting12 false)
(global boolean is_sprinting13 false)
(global boolean is_sprinting14 false)
(global boolean is_sprinting15 false)

(script static unit player2
	(unit (list_get (players) 2)))
(script static unit player3
	(unit (list_get (players) 3)))
(script static unit player4
	(unit (list_get (players) 4)))
(script static unit player5
	(unit (list_get (players) 5)))
(script static unit player6
	(unit (list_get (players) 6)))
(script static unit player7
	(unit (list_get (players) 7)))
(script static unit player8
	(unit (list_get (players) 8)))
(script static unit player9
	(unit (list_get (players) 9)))
(script static unit player10
	(unit (list_get (players) 10)))
(script static unit player11
	(unit (list_get (players) 11)))
(script static unit player12
	(unit (list_get (players) 12)))
(script static unit player13
	(unit (list_get (players) 13)))
(script static unit player14
	(unit (list_get (players) 14)))
(script static unit player15
	(unit (list_get (players) 15)))
	
(global real player0_x 1000)
(global real player0_y 1000)
(global boolean player0_moving false)
(global real player1_x 1000)
(global real player1_y 1000)
(global boolean player1_moving false)
(global real player2_x 1000)
(global real player2_y 1000)
(global boolean player2_moving false)
(global real player3_x 1000)
(global real player3_y 1000)
(global boolean player3_moving false)
(global real player4_x 1000)
(global real player4_y 1000)
(global boolean player4_moving false)
(global real player5_x 1000)
(global real player5_y 1000)
(global boolean player5_moving false)
(global real player6_x 1000)
(global real player6_y 1000)
(global boolean player6_moving false)
(global real player7_x 1000)
(global real player7_y 1000)
(global boolean player7_moving false)
(global real player8_x 1000)
(global real player8_y 1000)
(global boolean player8_moving false)
(global real player9_x 1000)
(global real player9_y 1000)
(global boolean player9_moving false)
(global real player10_x 1000)
(global real player10_y 1000)
(global boolean player10_moving false)
(global real player11_x 1000)
(global real player11_y 1000)
(global boolean player11_moving false)
(global real player12_x 1000)
(global real player12_y 1000)
(global boolean player12_moving false)
(global real player13_x 1000)
(global real player13_y 1000)
(global boolean player13_moving false)
(global real player14_x 1000)
(global real player14_y 1000)
(global boolean player14_moving false)
(global real player15_x 1000)
(global real player15_y 1000)
(global boolean player15_moving false)

(script continuous sprint0
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player0) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player0) y)))
	
	(set player0_moving (> (+ (abs_real (- temp player0_x)) (abs_real (- temp2 player0_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player0_x)) (abs_real (- temp2 player0_y))))
	(set player0_x temp)
	(set player0_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player0))
		(begin
			(if is_sprinting0
				(begin
					(set is_sprinting0 false)
					(objects_detach (player0) sprint_weap0)
					(damage_object destroyer sprint_weap0)
				)
				(if player0_moving
					(begin	
						(set is_sprinting0 true)
						(object_create_anew sprint_weap0)
						(objects_attach (player0) "body" sprint_weap0 "")
						(objects_detach (player0) sprint_weap0)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player0) false)
		)
		
		;;PASSIVE
		(if is_sprinting0
			(begin
				(if (not (and (unit_has_weapon_readied (player0) sprint_weap) player0_moving))
					(begin
						(set is_sprinting0 false)
						(objects_detach (player0) sprint_weap0)
						(damage_object destroyer sprint_weap0)
					)
				)
			)
		)
	)
)

(script continuous sprint1
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player1) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player1) y)))
	
	(set player1_moving (> (+ (abs_real (- temp player1_x)) (abs_real (- temp2 player1_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player1_x)) (abs_real (- temp2 player1_y))))
	(set player1_x temp)
	(set player1_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player1))
		(begin
			(if is_sprinting1
				(begin
					(set is_sprinting1 false)
					(objects_detach (player1) sprint_weap1)
					(damage_object destroyer sprint_weap1)
				)
				(if player1_moving
					(begin	
						(set is_sprinting1 true)
						(object_create_anew sprint_weap1)
						(objects_attach (player1) "body" sprint_weap1 "")
						(objects_detach (player1) sprint_weap1)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player1) false)
		)
		
		;;PASSIVE
		(if is_sprinting1
			(begin
				(if (not (and (unit_has_weapon_readied (player1) sprint_weap) player1_moving))
					(begin
						(set is_sprinting1 false)
						(objects_detach (player1) sprint_weap1)
						(damage_object destroyer sprint_weap1)
					)
				)
			)
		)
	)
)

(script continuous sprint2
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player2) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player2) y)))
	
	(set player2_moving (> (+ (abs_real (- temp player2_x)) (abs_real (- temp2 player2_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player2_x)) (abs_real (- temp2 player2_y))))
	(set player2_x temp)
	(set player2_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player2))
		(begin
			(if is_sprinting2
				(begin
					(set is_sprinting2 false)
					(objects_detach (player2) sprint_weap2)
					(damage_object destroyer sprint_weap2)
				)
				(if player2_moving
					(begin	
						(set is_sprinting2 true)
						(object_create_anew sprint_weap2)
						(objects_attach (player2) "body" sprint_weap2 "")
						(objects_detach (player2) sprint_weap2)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player2) false)
		)
		
		;;PASSIVE
		(if is_sprinting2
			(begin
				(if (not (and (unit_has_weapon_readied (player2) sprint_weap) player2_moving))
					(begin
						(set is_sprinting2 false)
						(objects_detach (player2) sprint_weap2)
						(damage_object destroyer sprint_weap2)
					)
				)
			)
		)
	)
)

(script continuous sprint3
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player3) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player3) y)))
	
	(set player3_moving (> (+ (abs_real (- temp player3_x)) (abs_real (- temp2 player3_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player3_x)) (abs_real (- temp2 player3_y))))
	(set player3_x temp)
	(set player3_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player3))
		(begin
			(if is_sprinting3
				(begin
					(set is_sprinting3 false)
					(objects_detach (player3) sprint_weap3)
					(damage_object destroyer sprint_weap3)
				)
				(if player3_moving
					(begin	
						(set is_sprinting3 true)
						(object_create_anew sprint_weap3)
						(objects_attach (player3) "body" sprint_weap3 "")
						(objects_detach (player3) sprint_weap3)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player3) false)
		)
		
		;;PASSIVE
		(if is_sprinting3
			(begin
				(if (not (and (unit_has_weapon_readied (player3) sprint_weap) player3_moving))
					(begin
						(set is_sprinting3 false)
						(objects_detach (player3) sprint_weap3)
						(damage_object destroyer sprint_weap3)
					)
				)
			)
		)
	)
)

(script continuous sprint4
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player4) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player4) y)))
	
	(set player4_moving (> (+ (abs_real (- temp player4_x)) (abs_real (- temp2 player4_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player4_x)) (abs_real (- temp2 player4_y))))
	(set player4_x temp)
	(set player4_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player4))
		(begin
			(if is_sprinting4
				(begin
					(set is_sprinting4 false)
					(objects_detach (player4) sprint_weap4)
					(damage_object destroyer sprint_weap4)
				)
				(if player4_moving
					(begin	
						(set is_sprinting4 true)
						(object_create_anew sprint_weap4)
						(objects_attach (player4) "body" sprint_weap4 "")
						(objects_detach (player4) sprint_weap4)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player4) false)
		)
		
		;;PASSIVE
		(if is_sprinting4
			(begin
				(if (not (and (unit_has_weapon_readied (player4) sprint_weap) player4_moving))
					(begin
						(set is_sprinting4 false)
						(objects_detach (player4) sprint_weap4)
						(damage_object destroyer sprint_weap4)
					)
				)
			)
		)
	)
)

(script continuous sprint5
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player5) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player5) y)))
	
	(set player5_moving (> (+ (abs_real (- temp player5_x)) (abs_real (- temp2 player5_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player5_x)) (abs_real (- temp2 player5_y))))
	(set player5_x temp)
	(set player5_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player5))
		(begin
			(if is_sprinting5
				(begin
					(set is_sprinting5 false)
					(objects_detach (player5) sprint_weap5)
					(damage_object destroyer sprint_weap5)
				)
				(if player5_moving
					(begin	
						(set is_sprinting5 true)
						(object_create_anew sprint_weap5)
						(objects_attach (player5) "body" sprint_weap5 "")
						(objects_detach (player5) sprint_weap5)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player5) false)
		)
		
		;;PASSIVE
		(if is_sprinting5
			(begin
				(if (not (and (unit_has_weapon_readied (player5) sprint_weap) player5_moving))
					(begin
						(set is_sprinting5 false)
						(objects_detach (player5) sprint_weap5)
						(damage_object destroyer sprint_weap5)
					)
				)
			)
		)
	)
)

(script continuous sprint6
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player6) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player6) y)))
	
	(set player6_moving (> (+ (abs_real (- temp player6_x)) (abs_real (- temp2 player6_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player6_x)) (abs_real (- temp2 player6_y))))
	(set player6_x temp)
	(set player6_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player6))
		(begin
			(if is_sprinting6
				(begin
					(set is_sprinting6 false)
					(objects_detach (player6) sprint_weap6)
					(damage_object destroyer sprint_weap6)
				)
				(if player6_moving
					(begin	
						(set is_sprinting6 true)
						(object_create_anew sprint_weap6)
						(objects_attach (player6) "body" sprint_weap6 "")
						(objects_detach (player6) sprint_weap6)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player6) false)
		)
		
		;;PASSIVE
		(if is_sprinting6
			(begin
				(if (not (and (unit_has_weapon_readied (player6) sprint_weap) player6_moving))
					(begin
						(set is_sprinting6 false)
						(objects_detach (player6) sprint_weap6)
						(damage_object destroyer sprint_weap6)
					)
				)
			)
		)
	)
)

(script continuous sprint7
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player7) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player7) y)))
	
	(set player7_moving (> (+ (abs_real (- temp player7_x)) (abs_real (- temp2 player7_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player7_x)) (abs_real (- temp2 player7_y))))
	(set player7_x temp)
	(set player7_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player7))
		(begin
			(if is_sprinting7
				(begin
					(set is_sprinting7 false)
					(objects_detach (player7) sprint_weap7)
					(damage_object destroyer sprint_weap7)
				)
				(if player7_moving
					(begin	
						(set is_sprinting7 true)
						(object_create_anew sprint_weap7)
						(objects_attach (player7) "body" sprint_weap7 "")
						(objects_detach (player7) sprint_weap7)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player7) false)
		)
		
		;;PASSIVE
		(if is_sprinting7
			(begin
				(if (not (and (unit_has_weapon_readied (player7) sprint_weap) player7_moving))
					(begin
						(set is_sprinting7 false)
						(objects_detach (player7) sprint_weap7)
						(damage_object destroyer sprint_weap7)
					)
				)
			)
		)
	)
)

(script continuous sprint8
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player8) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player8) y)))
	
	(set player8_moving (> (+ (abs_real (- temp player8_x)) (abs_real (- temp2 player8_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player8_x)) (abs_real (- temp2 player8_y))))
	(set player8_x temp)
	(set player8_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player8))
		(begin
			(if is_sprinting8
				(begin
					(set is_sprinting8 false)
					(objects_detach (player8) sprint_weap8)
					(damage_object destroyer sprint_weap8)
				)
				(if player8_moving
					(begin	
						(set is_sprinting8 true)
						(object_create_anew sprint_weap8)
						(objects_attach (player8) "body" sprint_weap8 "")
						(objects_detach (player8) sprint_weap8)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player8) false)
		)
		
		;;PASSIVE
		(if is_sprinting8
			(begin
				(if (not (and (unit_has_weapon_readied (player8) sprint_weap) player8_moving))
					(begin
						(set is_sprinting8 false)
						(objects_detach (player8) sprint_weap8)
						(damage_object destroyer sprint_weap8)
					)
				)
			)
		)
	)
)

(script continuous sprint9
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player9) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player9) y)))
	
	(set player9_moving (> (+ (abs_real (- temp player9_x)) (abs_real (- temp2 player9_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player9_x)) (abs_real (- temp2 player9_y))))
	(set player9_x temp)
	(set player9_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player9))
		(begin
			(if is_sprinting9
				(begin
					(set is_sprinting9 false)
					(objects_detach (player9) sprint_weap9)
					(damage_object destroyer sprint_weap9)
				)
				(if player9_moving
					(begin	
						(set is_sprinting9 true)
						(object_create_anew sprint_weap9)
						(objects_attach (player9) "body" sprint_weap9 "")
						(objects_detach (player9) sprint_weap9)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player9) false)
		)
		
		;;PASSIVE
		(if is_sprinting9
			(begin
				(if (not (and (unit_has_weapon_readied (player9) sprint_weap) player9_moving))
					(begin
						(set is_sprinting9 false)
						(objects_detach (player9) sprint_weap9)
						(damage_object destroyer sprint_weap9)
					)
				)
			)
		)
	)
)

(script continuous sprint10
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player10) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player10) y)))
	
	(set player10_moving (> (+ (abs_real (- temp player10_x)) (abs_real (- temp2 player10_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player10_x)) (abs_real (- temp2 player10_y))))
	(set player10_x temp)
	(set player10_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player10))
		(begin
			(if is_sprinting10
				(begin
					(set is_sprinting10 false)
					(objects_detach (player10) sprint_weap10)
					(damage_object destroyer sprint_weap10)
				)
				(if player10_moving
					(begin	
						(set is_sprinting10 true)
						(object_create_anew sprint_weap10)
						(objects_attach (player10) "body" sprint_weap10 "")
						(objects_detach (player10) sprint_weap10)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player10) false)
		)
		
		;;PASSIVE
		(if is_sprinting10
			(begin
				(if (not (and (unit_has_weapon_readied (player10) sprint_weap) player10_moving))
					(begin
						(set is_sprinting10 false)
						(objects_detach (player10) sprint_weap10)
						(damage_object destroyer sprint_weap10)
					)
				)
			)
		)
	)
)

(script continuous sprint11
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player11) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player11) y)))
	
	(set player11_moving (> (+ (abs_real (- temp player11_x)) (abs_real (- temp2 player11_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player11_x)) (abs_real (- temp2 player11_y))))
	(set player11_x temp)
	(set player11_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player11))
		(begin
			(if is_sprinting11
				(begin
					(set is_sprinting11 false)
					(objects_detach (player11) sprint_weap11)
					(damage_object destroyer sprint_weap11)
				)
				(if player11_moving
					(begin	
						(set is_sprinting11 true)
						(object_create_anew sprint_weap11)
						(objects_attach (player11) "body" sprint_weap11 "")
						(objects_detach (player11) sprint_weap11)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player11) false)
		)
		
		;;PASSIVE
		(if is_sprinting11
			(begin
				(if (not (and (unit_has_weapon_readied (player11) sprint_weap) player11_moving))
					(begin
						(set is_sprinting11 false)
						(objects_detach (player11) sprint_weap11)
						(damage_object destroyer sprint_weap11)
					)
				)
			)
		)
	)
)

(script continuous sprint12
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player12) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player12) y)))
	
	(set player12_moving (> (+ (abs_real (- temp player12_x)) (abs_real (- temp2 player12_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player12_x)) (abs_real (- temp2 player12_y))))
	(set player12_x temp)
	(set player12_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player12))
		(begin
			(if is_sprinting12
				(begin
					(set is_sprinting12 false)
					(objects_detach (player12) sprint_weap12)
					(damage_object destroyer sprint_weap12)
				)
				(if player12_moving
					(begin	
						(set is_sprinting12 true)
						(object_create_anew sprint_weap12)
						(objects_attach (player12) "body" sprint_weap12 "")
						(objects_detach (player12) sprint_weap12)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player12) false)
		)
		
		;;PASSIVE
		(if is_sprinting12
			(begin
				(if (not (and (unit_has_weapon_readied (player12) sprint_weap) player12_moving))
					(begin
						(set is_sprinting12 false)
						(objects_detach (player12) sprint_weap12)
						(damage_object destroyer sprint_weap12)
					)
				)
			)
		)
	)
)

(script continuous sprint13
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player13) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player13) y)))
	
	(set player13_moving (> (+ (abs_real (- temp player13_x)) (abs_real (- temp2 player13_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player13_x)) (abs_real (- temp2 player13_y))))
	(set player13_x temp)
	(set player13_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player13))
		(begin
			(if is_sprinting13
				(begin
					(set is_sprinting13 false)
					(objects_detach (player13) sprint_weap13)
					(damage_object destroyer sprint_weap13)
				)
				(if player13_moving
					(begin	
						(set is_sprinting13 true)
						(object_create_anew sprint_weap13)
						(objects_attach (player13) "body" sprint_weap13 "")
						(objects_detach (player13) sprint_weap13)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player13) false)
		)
		
		;;PASSIVE
		(if is_sprinting13
			(begin
				(if (not (and (unit_has_weapon_readied (player13) sprint_weap) player13_moving))
					(begin
						(set is_sprinting13 false)
						(objects_detach (player13) sprint_weap13)
						(damage_object destroyer sprint_weap13)
					)
				)
			)
		)
	)
)

(script continuous sprint14
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player14) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player14) y)))
	
	(set player14_moving (> (+ (abs_real (- temp player14_x)) (abs_real (- temp2 player14_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player14_x)) (abs_real (- temp2 player14_y))))
	(set player14_x temp)
	(set player14_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player14))
		(begin
			(if is_sprinting14
				(begin
					(set is_sprinting14 false)
					(objects_detach (player14) sprint_weap14)
					(damage_object destroyer sprint_weap14)
				)
				(if player14_moving
					(begin	
						(set is_sprinting14 true)
						(object_create_anew sprint_weap14)
						(objects_attach (player14) "body" sprint_weap14 "")
						(objects_detach (player14) sprint_weap14)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player14) false)
		)
		
		;;PASSIVE
		(if is_sprinting14
			(begin
				(if (not (and (unit_has_weapon_readied (player14) sprint_weap) player14_moving))
					(begin
						(set is_sprinting14 false)
						(objects_detach (player14) sprint_weap14)
						(damage_object destroyer sprint_weap14)
					)
				)
			)
		)
	)
)

(script continuous sprint15
	;;VELOCITY
	(set temp (abs_real (objects_distance_to_flag (player15) x)))
	(set temp2 (abs_real (objects_distance_to_flag (player15) y)))
	
	(set player15_moving (> (+ (abs_real (- temp player15_x)) (abs_real (- temp2 player15_y))) min_speed))
	;;(inspect (+ (abs_real (- temp player15_x)) (abs_real (- temp2 player15_y))))
	(set player15_x temp)
	(set player15_y temp2)
	
	;;FLASHLIGHT
	(if (unit_get_current_flashlight_state (player15))
		(begin
			(if is_sprinting15
				(begin
					(set is_sprinting15 false)
					(objects_detach (player15) sprint_weap15)
					(damage_object destroyer sprint_weap15)
				)
				(if player15_moving
					(begin	
						(set is_sprinting15 true)
						(object_create_anew sprint_weap15)
						(objects_attach (player15) "body" sprint_weap15 "")
						(objects_detach (player15) sprint_weap15)
						(sleep 5)
					)
				)
			)
			(units_set_desired_flashlight_state (player15) false)
		)
		
		;;PASSIVE
		(if is_sprinting15
			(begin
				(if (not (and (unit_has_weapon_readied (player15) sprint_weap) player15_moving))
					(begin
						(set is_sprinting15 false)
						(objects_detach (player15) sprint_weap15)
						(damage_object destroyer sprint_weap15)
					)
				)
			)
		)
	)
)