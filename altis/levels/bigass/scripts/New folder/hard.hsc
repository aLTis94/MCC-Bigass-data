(global boolean hardcore 0)

(script continuous hard
(if (= hardcore 1) 
(begin
(object_teleport COD altis_death)
)
(begin
(object_teleport COD bourrin_death)
)
)
(if (= (unit_get_health altis) 0.0)
(begin
(hud_show_crosshair 0)
(hud_show_shield 0)
(hud_show_motion_sensor 0)
(sleep 60)
(object_create_anew altis)
)
(if (= (unit_get_health bourrin) 0.0)
(begin
(hud_show_crosshair 1)
(hud_show_shield 1)
(hud_show_motion_sensor 1)
(sleep 60)
(object_create_anew bourrin)
)
)
)
)