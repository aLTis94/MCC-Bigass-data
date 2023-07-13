(global object_definition w_dmr "bourrin\weapons\dmr\dmr")
(global object_definition w_rmag "reach\objects\weapons\pistol\magnum\magnum")
(global object_definition dicks "altis\weapons\binoculars\binoculars")
(global object_definition rips "cmt\weapons\human\stealth_sniper\sniper rifle")
(global object_definition ibru "weapons\gauss sniper\gauss sniper")
(global object_definition ma5k "bourrin\weapons\ma5k\cmt's ma5k reloaded")
(global object_definition mnar "bourrin\weapons\masternoob's assault rifle\assault rifle")
(global object_definition rl "weapons\rocket launcher\rocket launcher test")
(global object_definition shotty "cmt\weapons\human\shotgun\shotgun")
(global object_definition socom "halo3\weapons\odst pistol\odst pistol")
(global object_definition laser "halo reach\objects\weapons\support_high\spartan_laser\spartan laser")


(global short plyrnum 0)

(script continuous increase_plyrnum
	(begin
		(set plyrnum (+ plyrnum 1))
	)
)

(script continuous reset_plyrnum
	(if
		(= (> plyrnum 15) true)
			(begin
				(set plyrnum 0)
			)
	)
)

(script continuous backpack_dmr
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) w_dmr)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_dmr))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~dmr)
			)
	)
)

(script continuous backpack_mag
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) w_rmag)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_rmag))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~rpistol)
			)
	)
)

(script continuous backpack_binocs
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) dicks)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) dicks))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~binocs)
			)
	)
)

(script continuous backpack_snipa
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) rips)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) rips))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~cmtsr)
			)
	)
)

(script continuous backpack_bewm
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) ibru)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) ibru))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~gauss)
			)
	)
)

(script continuous backpack_ma5k
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) ma5k)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) ma5k))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~ma5k)
			)
	)
)

(script continuous backpack_mnar
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) mnar)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) mnar))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~mnar)
			)
	)
)

(script continuous backpack_rl
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) rl)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) rl))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~RL)
			)
	)
)

(script continuous backpack_sg
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) shotty)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) shotty))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~shotgun)
			)
	)
)

(script continuous backpack_odst
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) socom)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) socom))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~socom)
			)
	)
)

(script continuous backpack_laser
	(if
		(and
			(unit_has_weapon (unit (list_get (players) plyrnum)) laser)
			(not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) laser))
		true)
			(begin
				(object_set_permutation (unit (list_get (players) plyrnum)) "backpack" ~splaser)
			)
	)
)
