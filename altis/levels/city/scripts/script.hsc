(global short plr 0)

(script continuous kill_volume
  (if (or (volume_test_object "death1" (list_get (players) plr)) (volume_test_object "death2" (list_get (players) plr)))
    (unit_kill (unit (list_get (players) plr)))
  )
  (if (= plr 15)
    (set plr 0)
    (set plr (+ plr 1))
  )
)

(script continuous tram_spawn
	(begin
		(object_destroy tram)
		(if (or (volume_test_objects station (players)) (volume_test_objects bridge (players)))
			(begin
				;;(sv_say "spawned")
				(object_create tram)
				(scenery_animation_start_at_frame tram "altis\levels\city\scenery\tram\tram" "a" 0)
				(sleep 400)
				;;(sv_say "removed")
				(object_destroy tram)
				(sleep 300)
			)
		)
	)
)