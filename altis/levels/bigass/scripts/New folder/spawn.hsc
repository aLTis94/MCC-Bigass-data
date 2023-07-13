(global boolean is_server false)
(script startup server
(begin
(if (= (unit_get_health check_vehicle) 0.0)
(begin
(set is_server true)
(sleep 30)
(object_destroy check_vehicle)
(object_create rox)
(object_create goose3)
(object_create goose4)
(object_create goose1)
(object_create goose2)
)
)
)
)
(script continuous client
(begin
(if (= is_server true)
(begin
(if (= (volume_test_object trigvol rox) true)
(begin
(object_teleport rox roox)
(object_set_facing rox roox)
)
)
(if (= (volume_test_object trigvol goose3) true)
(begin
(object_teleport goose3 flag3)
(object_set_facing goose3 flag3)
)
)
(if (= (volume_test_object trigvol goose4) true)
(begin
(object_teleport goose4 flag4)
(object_set_facing goose4 flag4)
)
)
(if (= (volume_test_object trigvol goose2) true)
(begin
(object_teleport goose2 flag2)
(object_set_facing goose2 flag2)
)
)
(if (= (volume_test_object trigvol goose1) true)
(begin
(object_teleport goose1 flag1)
(object_set_facing goose1 flag1)
)
)
)
)
)
)