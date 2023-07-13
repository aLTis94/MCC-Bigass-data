(script continuous warning
(if (volume_test_object field player0) (begin
(object_create warn)
(objects_attach player0 "head" warn "" )
(objects_detach player0 warn)
(sleep 5))
)
)