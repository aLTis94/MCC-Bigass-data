(script continuous gauss
(if (= (unit_get_health check_vehicle) 0.0) (sleep -1))
(sleep 2)
(object_create gauss)
(sleep 300)
)