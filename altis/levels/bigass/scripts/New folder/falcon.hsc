

(global boolean is_host false)
(script continuous respawn_example
 (sleep_until (or (= (unit_get_shield example_vehicle) 0) (volume_test_object trigvol example_vehicle)))
 (if (= (unit_get_shield example_vehicle) 0) (begin
   (object_create destroyed_copy)
  (objects_attach example_vehicle "destroy" destroyed_copy "damage")
  (objects_detach example_vehicle destroyed_copy)
  (sleep_until 
   (begin
    (if (!= (list_count (vehicle_riders example_vehicle)) 0) (unit_kill (unit (list_get (vehicle_riders example_vehicle) 0))))
    (= (list_count (vehicle_riders example_vehicle)) 0)
   ) 
   0
  )
  (object_destroy example_vehicle)
  (sleep_until (volume_test_object trigvol destroyed_copy))
  (object_destroy destroyed_copy)
 ))
 (object_create_anew example_vehicle)
 )
 (script startup setup
 (sleep 5)
 (if (!= (unit_get_health check_vehicle) -1) (begin
  (object_create example_vehicle)
  (object_create example_vehicle2)
  (set is_host true)
 ) (sleep -1 respawn_example))
)


(script continuous respawn_example2
 (sleep_until (or (= (unit_get_shield example_vehicle2) 0) (volume_test_object trigvol example_vehicle2)))
 (if (= (unit_get_shield example_vehicle2) 0) (begin
   (object_create destroyed_copy2)
  (objects_attach example_vehicle2 "destroy" destroyed_copy2 "damage")
  (objects_detach example_vehicle2 destroyed_copy2)
  (sleep_until 
   (begin
    (if (!= (list_count (vehicle_riders example_vehicle2)) 0) (unit_kill (unit (list_get (vehicle_riders example_vehicle2) 0))))
    (= (list_count (vehicle_riders example_vehicle2)) 0)
   ) 
   0
  )
  (object_destroy example_vehicle2)
  (sleep_until (volume_test_object trigvol destroyed_copy2))
  (object_destroy destroyed_copy2)
 ))
 (object_create_anew example_vehicle2)
)


(script continuous scorpion_destruction
 (sleep_until (or (= (unit_get_shield scorpion) 0) (volume_test_object trigvol scorpion)))
 (if (= (unit_get_shield scorpion) 0) (begin
  (sleep_until 
   (begin
    (if (!= (list_count (vehicle_riders scorpion)) 0) (unit_kill (unit (list_get (vehicle_riders scorpion) 0))))
    (= (list_count (vehicle_riders scorpion)) 0)
   ) 
   0
  )
  (object_create scorpion_destroyed)
  (objects_attach scorpion "" scorpion_destroyed "damage")
  (objects_detach scorpion scorpion_destroyed)
  (object_destroy scorpion)
  (sleep_until (volume_test_object trigvol scorpion_destroyed))
  (object_destroy scorpion_destroyed)
 ))
 (object_create_anew scorpion)
)


(script continuous scorpion_destruction2
 (sleep_until (or (= (unit_get_shield scorpion2) 0) (volume_test_object trigvol scorpion2)))
 (if (= (unit_get_shield scorpion2) 0) (begin
  (sleep_until 
   (begin
    (if (!= (list_count (vehicle_riders scorpion2)) 0) (unit_kill (unit (list_get (vehicle_riders scorpion2) 0))))
    (= (list_count (vehicle_riders scorpion2)) 0)
   ) 
   0
  )
  (object_create scorpion_destroyed2)
  (objects_attach scorpion2 "" scorpion_destroyed2 "damage")
  (objects_detach scorpion2 scorpion_destroyed2)
  (object_destroy scorpion2)
  (sleep_until (volume_test_object trigvol scorpion_destroyed2))
  (object_destroy scorpion_destroyed)
 ))
 (object_create_anew scorpion2)
)

(global boolean tod 0)

(script continuous nite
(if (!= (unit_get_health night) 1.0)
(switch_bsp 1)
)
(if (= tod 1)
(begin
(object_create_anew n)
)
)
(sleep 30)
)


(script continuous falcon_smoke   ;;Spawns a weapon on Falcon vehicle when it has low shield. The weapon emits smoke and should sync online.
	;;(if (= is_host true) (sleep -1)) 
	(if (< (unit_get_shield example_vehicle) 0.4) 
		(begin
			(object_create smoke1)
			(objects_attach example_vehicle "smoke" smoke1 "smoke")
			(objects_detach example_vehicle smoke1)
			(sleep 10)
			(object_destroy smoke1)
		)
		(begin
			(object_destroy smoke1)
			(sleep 30)
		)
	)
)

(script continuous falcon_smoke2   ;;Spawns a weapon on Falcon vehicle when it has low shield. The weapon emits smoke and should sync online.
	;;(if (= is_host true) (sleep -1)) 
	(if (< (unit_get_shield example_vehicle2) 0.4) 
		(begin
			(object_create smoke2)
			(objects_attach example_vehicle2 "smoke" smoke2 "smoke")
			(objects_detach example_vehicle2 smoke2)
			(sleep 10)
			(object_destroy smoke2)
		)
		(begin
			(object_destroy smoke2)
			(sleep 30)
		)
	)
)



(script continuous scorpion_smoke1
	;;(if (= is_host true) (sleep -1)) 
	(if (< (unit_get_shield scorpion) 0.4) 
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



(script continuous scorpion_smoke2
	;;(if (= is_host true) (sleep -1)) 
	(if (< (unit_get_shield scorpion2) 0.4) 
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

