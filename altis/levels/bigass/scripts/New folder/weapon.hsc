(script continuous weapons
(if (= (unit_get_health example_vehicle) 0) (begin
(if (= (unit_get_health cyborg.biped
 ) 0) (begin
(sleep 1)
(object_create batman)
(object_create robin)
(object_create catwoman)
(sleep 1)
)
)
)
)
)