(global boolean is_host false)
(script continuous respawn_example
 (sleep_until (or (= (unit_get_shield example_vehicle) 0) (volume_test_object trigvol example_vehicle)))
 (if (= (unit_get_shield example_vehicle) 0) (begin
  (object_create destroyed_copy)
  (objects_attach example_vehicle "" destroyed_copy "")
  (objects_detach example_vehicle destroyed_copy)
(sleep_until 
   (begin
    (unit_kill (vehicle_driver example_vehicle))
    (unit_kill (vehicle_gunner example_vehicle))
    (unit_kill (unit (list_get (vehicle_riders example_vehicle) 0)))
    (= (list_count (vehicle_riders example_vehicle)) 0)
   ) 
   0
  )
  (object_destroy example_vehicle)
  (sleep_until (volume_test_object trigvol destroyed_copy))
  (object_destroy destroyed_copy)
  (object_create_anew destroyed_copy)
 ))
 (object_create_anew example_vehicle)
)
(script startup setup
 (sleep 5)
 (if (!= (unit_get_health host_check) -1) (begin
  (object_create example_vehicle)
  (set is_host true)
  ;blah
 ) (sleep -1 respawn_example))
)