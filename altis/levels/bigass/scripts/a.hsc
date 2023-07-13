

;;-------------------------------------------------------SPAWN VEHICLES---------------------------------------------------------

(script startup create_vehicles
	(if (game_is_authoritative)
		(begin
			(sleep 30)
			(object_create rox)
			(object_create spade)
			(object_create scorpion)
			(object_create scorpion2)
			(object_create turret1)
			(object_create turret2)
			(object_create forklift)
			(object_create hay1)
			(object_create hay2)
			(object_create hay3)
			(object_create hay4)
			(object_create hay5)
			(object_create hay6)
			(object_create hay7)
			(object_create mortar3)
			(object_create mortar4)
			(object_create grackle3)
			(object_create grackle4)
		)
	)
)

(script continuous spawn_turret1_collision
	(sleep 90)
	(if (game_is_authoritative)
		(begin
			(sleep_until (> (unit_get_health turret1) -1))
			(object_create turret1_col)
			(sleep -1)
			;;(sleep_until (= (unit_get_health turret1) -1))
			;;(object_destroy turret1_col)
		)
		(sleep -1)
	)
)

(script continuous spawn_turret2_collision
	(sleep 90)
	(if (game_is_authoritative)
		(begin
			(sleep_until (> (unit_get_health turret2) -1))
			(object_create turret2_col)
			(sleep -1)
			;;(sleep_until (= (unit_get_health turret2) -1))
			;;(object_destroy turret2_col)
		)
		(sleep -1)
	)
)

(script continuous respawn_vehicles
	(if (game_is_authoritative)
		(begin
			(if (= (volume_test_object trigvol rox) true)
				(begin
					(object_teleport rox roox)
					(object_set_facing rox roox)
				)
			)
			(if (= (volume_test_object trigvol spade) true)
				(begin
					(object_teleport spade spade_spawn)
					(object_set_facing spade spade_spawn)
				)
			)
			
			(if (= (volume_test_object trigvol mortar3) true)
				(begin
					(object_teleport mortar3 mortar3_spawn)
					(object_set_facing mortar3 mortar3_spawn)
				)
			)
			(if (= (volume_test_object trigvol mortar4) true)
				(begin
					(object_teleport mortar4 mortar4_spawn)
					(object_set_facing mortar4 mortar4_spawn)
				)
			)
			
			(if (= (volume_test_object trigvol grackle3) true)
				(begin
					(object_teleport grackle3 grackle3_spawn)
					(object_set_facing grackle3 grackle3_spawn)
				)
			)
			(if (= (volume_test_object trigvol grackle4) true)
				(begin
					(object_teleport grackle4 grackle4_spawn)
					(object_set_facing grackle4 grackle4_spawn)
				)
			)
			(if (= (volume_test_object trigvol forklift) true)
				(begin
					(object_teleport forklift fork_spawn)
					(object_set_facing forklift fork_spawn)
				)
			)
			(if (= (volume_test_object trigvol hay1) true)
				(begin
					(object_teleport hay1 hay_1)
					(object_set_facing hay1 hay_1)
				)
			)
			(if (= (volume_test_object trigvol hay2) true)
				(begin
					(object_teleport hay2 hay_2)
					(object_set_facing hay2 hay_2)
				)
			)
			(if (= (volume_test_object trigvol hay3) true)
				(begin
					(object_teleport hay3 hay_3)
					(object_set_facing hay3 hay_3)
				)
			)
			(if (= (volume_test_object trigvol hay4) true)
				(begin
					(object_teleport hay4 hay_4)
					(object_set_facing hay4 hay_4)
				)
			)
			(if (= (volume_test_object trigvol hay5) true)
				(begin
					(object_teleport hay5 hay_5)
					(object_set_facing hay5 hay_5)
				)
			)
			(if (= (volume_test_object trigvol hay6) true)
				(begin
					(object_teleport hay6 hay_6)
					(object_set_facing hay6 hay_6)
				)
			)
			(if (= (volume_test_object trigvol hay7) true)
				(begin
					(object_teleport hay7 hay_7)
					(object_set_facing hay7 hay_7)
				)
			)
			(if (= (volume_test_object trigvol scorpion) true)
				(begin
					(object_teleport scorpion scorpion_spawn)
					(object_set_facing scorpion scorpion_spawn)
				)
			)
			(if (= (volume_test_object trigvol scorpion2) true)
				(begin
					(object_teleport scorpion2 scorpion2_spawn)
					(object_set_facing scorpion2 scorpion2_spawn)
				)
			)
		)
		(sleep -1)
	)
)

;;-------------------------------------------------------DESTROYABLE VEHICLES--------------------------------------------------------

(script continuous falcon_destruction
	(if (game_is_authoritative)
		(begin
			(sleep_until (or (= (unit_get_shield falcon) 0) (volume_test_object trigvol falcon)))
			(if (= (unit_get_shield falcon) 0) (begin
				(sleep_until (begin
						(if (!= (list_count (vehicle_riders falcon)) 0) (unit_kill (unit (list_get (vehicle_riders falcon) 0))))
						(= (list_count (vehicle_riders falcon)) 0)
					) 0)
				(object_create falcon_destroyed)
				(objects_attach falcon "destroy" falcon_destroyed "damage")
				(objects_detach falcon falcon_destroyed)
				(object_destroy falcon)
				;;---------------------------
				(object_create left_wing)
				(objects_attach falcon_destroyed "left_wing" left_wing "")
				(object_create right_wing)
				(objects_attach falcon_destroyed "right_wing" right_wing "")
				(object_create tail)
				(objects_attach falcon_destroyed "tail" tail "")
				(objects_detach falcon_destroyed left_wing)
				(objects_detach falcon_destroyed right_wing)
				(objects_detach falcon_destroyed tail)
				;;---------------------------
				(sleep 900) ;;sleep for 30 seconds before respawning
				(object_destroy falcon_destroyed)
				(object_destroy left_wing)
				(object_destroy right_wing)
				(object_destroy tail)
			))
			(sleep 1)
			(object_create_anew falcon)
		)
		(sleep -1)
	)
)

(script continuous falcon_smoke
	(if (= (game_is_authoritative) 0) (sleep -1)) 
	(if (and (< (unit_get_shield falcon) 0.4) (> (unit_get_shield falcon) 0))
		(begin
			(object_create smoke1)
			(objects_attach falcon "smoke" smoke1 "smoke")
			(objects_detach falcon smoke1)
			(sleep 5)
			(object_destroy smoke1)
		)
		(begin
			(object_destroy smoke1)
			(sleep 30)
		)
	)
)


(script continuous falcon2_destruction
	(if (game_is_authoritative)
		(begin
			(sleep_until (or (= (unit_get_shield falcon2) 0) (volume_test_object trigvol falcon2)))
			(if (= (unit_get_shield falcon2)0) (begin
				(sleep_until (begin
						(if (!= (list_count (vehicle_riders falcon2)) 0) (unit_kill (unit (list_get (vehicle_riders falcon2) 0))))
						(= (list_count (vehicle_riders falcon2)) 0)
				) 0 )
				(object_create falcon2_destroyed)
				(objects_attach falcon2 "destroy" falcon2_destroyed "damage")
				(objects_detach falcon2 falcon2_destroyed)
				(object_destroy falcon2)
				;;---------------------------
				(object_create left_wing2)
				(objects_attach falcon2_destroyed "left_wing" left_wing2 "")
				(object_create right_wing2)
				(objects_attach falcon2_destroyed "right_wing" right_wing2 "")
				(object_create tail2)
				(objects_attach falcon2_destroyed "tail" tail2 "")
				(objects_detach falcon2_destroyed left_wing2)
				(objects_detach falcon2_destroyed right_wing2)
				(objects_detach falcon2_destroyed tail2)
				;;---------------------------
				(sleep 900) ;;sleep for 30 seconds before respawning
				(object_destroy falcon2_destroyed)
				(object_destroy left_wing2)
				(object_destroy right_wing2)
				(object_destroy tail2)
			))
			(sleep 1)
			(object_create_anew falcon2)
		)
		(sleep -1)
	)
)

(script continuous falcon2_smoke
	(if (= (game_is_authoritative) 0) (sleep -1)) 
	(if (and (< (unit_get_shield falcon2) 0.4) (> (unit_get_shield falcon2) 0))
		(begin
			(object_create smoke2)
			(objects_attach falcon2 "smoke" smoke2 "smoke")
			(objects_detach falcon2 smoke2)
			(sleep 5)
			(object_destroy smoke2)
		)
		(begin
			(object_destroy smoke2)
			(sleep 30)
		)
	)
)



(script continuous scorpion_destruction
	(if (game_is_authoritative)
		(begin
			(sleep_until (or (= (unit_get_shield scorpion) 0) (volume_test_object trigvol scorpion)))
			(if (= (unit_get_shield scorpion) 0) (begin
				(sleep_until (begin
						(if (!= (list_count (vehicle_riders scorpion)) 0) (unit_kill (unit (list_get (vehicle_riders scorpion) 0))))
						(= (list_count (vehicle_riders scorpion)) 0)
					) 0)
				(object_create scorpion_destroyed)
				(objects_attach scorpion "" scorpion_destroyed "damage")
				(objects_detach scorpion scorpion_destroyed)
				(object_destroy scorpion)
				(sleep 900) ;;sleep for 30 seconds before respawning
				(object_destroy scorpion_destroyed)
			))
			(sleep 1)
			(object_create_anew scorpion)
		)
		(sleep -1)
	)
)

(script continuous scorpion_smoke
	(if (= (game_is_authoritative) 0) (sleep -1)) 
	(if (and (< (unit_get_shield scorpion) 0.4) (> (unit_get_shield scorpion) 0))
		(begin
			(object_create smoke3)
			(objects_attach scorpion "engine" smoke3 "smoke")
			(objects_detach scorpion smoke3)
			(sleep 10)
			(object_destroy smoke3)
		)
		(begin
			(object_destroy smoke3)
			(sleep 30)
		)
	)
)



(script continuous scorpion2_destruction
	(if (game_is_authoritative)
		(begin
			(sleep_until (or (= (unit_get_shield scorpion2) 0) (volume_test_object trigvol scorpion2)))
			(if (= (unit_get_shield scorpion2) 0) (begin
				(sleep_until (begin
						(if (!= (list_count (vehicle_riders scorpion2)) 0) (unit_kill (unit (list_get (vehicle_riders scorpion2) 0))))
						(= (list_count (vehicle_riders scorpion2)) 0)
					) 0)
				(object_create scorpion2_destroyed)
				(objects_attach scorpion2 "" scorpion2_destroyed "damage")
				(objects_detach scorpion2 scorpion2_destroyed)
				(object_destroy scorpion2)
				(sleep 900) ;;sleep for 30 seconds before respawning
				(object_destroy scorpion2_destroyed)
			))
			(sleep 1)
			(object_create_anew scorpion2)
		)
		(sleep -1)
	)
)

(script continuous scorpion2_smoke
	(if (= (game_is_authoritative) 0) (sleep -1)) 
	(if (and (< (unit_get_shield scorpion2) 0.4) (> (unit_get_shield scorpion2) 0))
		(begin
			(object_create smoke4)
			(objects_attach scorpion2 "engine" smoke4 "smoke")
			(objects_detach scorpion2 smoke4)
			(sleep 10)
			(object_destroy smoke4)
		)
		(begin
			(object_destroy smoke4)
			(sleep 30)
		)
	)
)


(script continuous truck_destruction
	(if (game_is_authoritative)
		(begin
			(sleep_until (or (= (unit_get_shield truck) 0) (volume_test_object trigvol truck)))
			(if (= (unit_get_shield truck) 0) (begin
				(sleep_until (begin
						(if (!= (list_count (vehicle_riders truck)) 0) (unit_kill (unit (list_get (vehicle_riders truck) 0))))
						(= (list_count (vehicle_riders truck)) 0)
					) 0)
				(object_create truck_destroyed)
				(objects_attach truck "" truck_destroyed "damage")
				(objects_detach truck truck_destroyed)
				(object_destroy truck)
				(object_create wheel)
				(objects_attach truck_destroyed "wheel" wheel "")
				(objects_detach truck_destroyed wheel)
				(sleep 900) ;;sleep for 30 seconds before respawning
				(object_destroy wheel)
				(object_destroy truck_destroyed)
			))
			(sleep 1)
			(object_create_anew truck)
		)
		(sleep -1)
	)
)

(script continuous truck_smoke
	(if (= (game_is_authoritative) 0) (sleep -1)) 
	(if (and (< (unit_get_shield truck) 0.4) (> (unit_get_shield truck) 0))
		(begin
			(object_create smoke5)
			(objects_attach truck "engine" smoke5 "smoke")
			(objects_detach truck smoke5)
			(sleep 10)
			(object_destroy smoke5)
		)
		(begin
			(object_destroy smoke5)
			(sleep 30)
		)
	)
)




(script continuous truck2_destruction
	(if (game_is_authoritative)
		(begin
			(sleep_until (or (= (unit_get_shield truck2) 0) (volume_test_object trigvol truck2)))
			(if (= (unit_get_shield truck2) 0) (begin
				(sleep_until (begin
						(if (!= (list_count (vehicle_riders truck2)) 0) (unit_kill (unit (list_get (vehicle_riders truck2) 0))))
						(= (list_count (vehicle_riders truck2)) 0)
					) 0)
				(object_create truck2_destroyed)
				(objects_attach truck2 "" truck2_destroyed "damage")
				(objects_detach truck2 truck2_destroyed)
				(object_destroy truck2)
				(object_create wheel2)
				(objects_attach truck2_destroyed "wheel" wheel2 "")
				(objects_detach truck2_destroyed wheel2)
				(sleep 900) ;;sleep for 30 seconds before respawning
				(object_destroy wheel2)
				(object_destroy truck2_destroyed)
			))
			(sleep 1)
			(object_create_anew truck2)
		)
		(sleep -1)
	)
)

(script continuous truck2_smoke
	(if (= (game_is_authoritative) 0) (sleep -1)) 
	(if (and (< (unit_get_shield truck2) 0.4) (> (unit_get_shield truck2) 0))
		(begin
			(object_create smoke6)
			(objects_attach truck2 "engine" smoke6 "smoke")
			(objects_detach truck2 smoke6)
			(sleep 10)
			(object_destroy smoke6)
		)
		(begin
			(object_destroy smoke6)
			(sleep 30)
		)
	)
)