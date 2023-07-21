(global real shield_recharge_rate 0.02)

(global real shield 0)

(script continuous limit_shields
	(set shield (unit_get_shield (player0)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player0)) 1)
		(units_set_current_vitality (player0) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player1)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player1)) 1)
		(units_set_current_vitality (player1) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player2)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player2)) 1)
		(units_set_current_vitality (player2) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player3)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player3)) 1)
		(units_set_current_vitality (player3) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player4)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player4)) 1)
		(units_set_current_vitality (player4) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player5)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player5)) 1)
		(units_set_current_vitality (player5) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player6)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player6)) 1)
		(units_set_current_vitality (player6) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player7)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player7)) 1)
		(units_set_current_vitality (player7) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player8)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player8)) 1)
		(units_set_current_vitality (player8) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player9)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player9)) 1)
		(units_set_current_vitality (player9) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player10)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player10)) 1)
		(units_set_current_vitality (player10) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player11)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player11)) 1)
		(units_set_current_vitality (player11) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player12)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player12)) 1)
		(units_set_current_vitality (player12) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player13)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player13)) 1)
		(units_set_current_vitality (player13) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player14)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player14)) 1)
		(units_set_current_vitality (player14) 75 (* shield 75))
	)

	(set shield (unit_get_shield (player15)))
	
	(if (< shield 1)
		(set shield (+ shield shield_recharge_rate))
	)
	
	(if (> (unit_get_health (player15)) 1)
		(units_set_current_vitality (player15) 75 (* shield 75))
	)
)