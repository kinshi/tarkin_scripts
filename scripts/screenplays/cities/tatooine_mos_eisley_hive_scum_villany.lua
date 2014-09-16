TatooineMosEisleyHiveScumVillanyScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TatooineMosEisleyHiveScumVillanyScreenPlay"
}

registerScreenPlay("TatooineMosEisleyHiveScumVillanyScreenPlay", true)

function TatooineMosEisleyHiveScumVillanyScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function TatooineMosEisleyHiveScumVillanyScreenPlay:spawnSceneObjects()

	-- Lucky Despot Ojbects (Outside)
	spawnSceneObject("tatooine", "object/tangible/camp/campfire_logs_smoldering.iff", 3340.5, 5.0, -4623.1, 0, 0, 0, 1, 0)
	spawnSceneObject("tatooine", "object/tangible/camp/camp_spit_s3.iff", 3374.9, 5.0, -4637.9, 0, 0, 1, 0, 0)
	spawnSceneObject("tatooine", "object/tangible/camp/campfire_logs_ash.iff", 3405.2, 5.0, -4541.3, 0, 0, 0, 1, 0)

end

function TatooineMosEisleyHiveScumVillanyScreenPlay:spawnMobiles()

	-- Lucky Despot (Outside Ground Level)
	spawnMobile("tatooine", "valarian_henchman", 300, 3327.7, 5.0, -4603.1, 169, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 3327.6, 5.0, -4605.2, 4, 0)
	spawnMobile("tatooine", "valarian_thug", 300, 3326.5, 5.0, -4604.6, 64, 0)
	spawnMobile("tatooine", "valarian_scout", 300, 3353.9, 14.0, -4579.7, 21, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 3341.8, 5.0, -4623.6, -71, 0)
	spawnMobile("tatooine", "valarian_thug", 300, 3341.1, 5.0, -4621.9, -146, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 3339.0, 5.0, -4622.9, 93, 0)
	spawnMobile("tatooine", "valarian_henchman", 300, 3340.0, 5.0, -4624.4, 24, 0)
	spawnMobile("tatooine", "valarian_assassin", 240, 3369.0, 5.0, -4638.3, 101, 0)
	spawnMobile("tatooine", "valarian_assassin", 240, 3372.9, 5.0, -4636.8, -133, 0)
	spawnMobile("tatooine", "domestic_eopie", 240, 3374.8, 5.0, -4641.4, -44, 0)
	spawnMobile("tatooine", "domestic_eopie", 240, 3370.0, 5.0, -4643.5, -25, 0)
	spawnMobile("tatooine", "domestic_eopie", 240, 3366.4, 5.0, -4634.0, 108, 0)
	spawnMobile("tatooine", "valarian_enforcer", 240, 3429.7, 5.0, -4621.0, -173, 0)
	spawnMobile("tatooine", "valarian_swooper", 240, 3436.9, 5.0, -4617.5, 141, 0)
	spawnMobile("tatooine", "valarian_swooper_leader", 240, 3441.9, 5.0, -4613.8, 37, 0)
	spawnMobile("tatooine", "valarian_thug", 300, 3417.3, 5.0, -4509.9, -98, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 3408.2, 5.0, -4515.8, 0, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 3405.1, 5.0, -4522.1, -70, 0) -- Figure out how to make this mobile sit on chair
	spawnMobile("tatooine", "valarian_henchman", 300, 3386.2, 5.0, -4534.1, -127, 0)
	spawnMobile("tatooine", "valarian_henchman", 300, 3384.4, 5.0, -4534.5, 151, 0)
	spawnMobile("tatooine", "valarian_henchman", 300, 3384.2, 5.0, -4536.9, 52, 0)
	spawnMobile("tatooine", "valarian_scout", 300, 3356.2, 5.0, -4553.9, 122, 0)
	spawnMobile("tatooine", "valarian_thug", 300, 3350.0, 5.0, -4583.5, -9, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 3330.5, 5.0, -4588.9, 171, 0)
	spawnMobile("tatooine", "valarian_thug", 300, 3404.2, 5.0, -4542.6, 36, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 3406.2, 5.0, -4542.2, -52, 0)
	spawnMobile("tatooine", "valarian_scout", 300, 3406.0, 5.0, -4540.1, -146, 0)
	spawnMobile("tatooine", "valarian_henchman", 300, 3404.2, 5.0, -4540.5, 130, 0)

	-- Lucky Despot (Outside Ramp and Entrance)
	spawnMobile("tatooine", "valarian_compound_guard", 300, 3361.3, 14.0, -4582.2, -42, 0)
	spawnMobile("tatooine", "valarian_compound_guard", 300, 3361.8, 14.0, -4580.0, -65, 0)
	spawnMobile("tatooine", "valarian_compound_guard", 300, 3356.3, 14.0, -4587.6, 73, 0)
	spawnMobile("tatooine", "valarian_thug", 300, 3340.7, 8.5, -4539.9, -132, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 3339.3, 8.2, -4594.3, 61, 0)

	-- Mos Eisley Starport
	spawnMobile("tatooine", "stormtrooper", 300, 3534.7, 5.0, -4808.8, -91, 0)
	spawnMobile("tatooine", "stormtrooper", 300, 3524.1, 5.0, -4800.4, 127, 0)
	spawnMobile("tatooine", "stormtrooper", 300, 3534.4, 5.0, -4797.3, -90, 0)
	spawnMobile("tatooine", "stormtrooper", 300, 3525.2, 5.0, -4797.9, -128, 0)
	spawnMobile("tatooine", "stormtrooper", 300, 3524.0, 5.0, -4801.8, -20, 0)

	--Mos Eisley Cantina (Outside)
	spawnMobile("tatooine", "jabba_assassin", 300, 3477.9, 5.0, -4843.2, 128, 0)
	spawnMobile("tatooine", "jabba_enforcer", 300, 3480.1, 5.0, -4842.9, -98, 0)
	spawnMobile("tatooine", "jabba_thief", 300, 3478.0, 5.0, -4844.7, -9, 0)
	spawnMobile("tatooine", "jabba_thug", 300, 3470.9, 5.0, -4852.0, 173, 0)
	spawnMobile("tatooine", "jabba_scout", 300, 3483.2, 5.0, -4861.9, -73, 0)
	spawnMobile("tatooine", "jabba_swooper", 300, 3481.8, 5.0, -4861.9, 97, 0)
	spawnMobile("tatooine", "jabba_henchman", 300, 3483.3, 5.0, -4863.9, 11, 0)
	spawnMobile("tatooine", "jabba_enforcer", 300, 3395.7, 5.0, -4793.0, -51, 0)
	spawnMobile("tatooine", "jabba_assassin", 300, 3393.2, 5.0, -4792.5, 137, 0)
	spawnMobile("tatooine", "jabba_swooper_leader", 300, 3392.6, 5.0, -4793.7, 77, 0)
	spawnMobile("tatooine", "jabba_thug", 300, 3378.4, 5.0, -4799.2, 14, 0)
	spawnMobile("tatooine", "jabba_henchman", 300, 3380.0, 5.0, -4795, -58, 0)
	spawnMobile("tatooine", "jabba_scout", 300, 3374.4, 5.0, -4794.3, 123, 0)
	spawnMobile("tatooine", "jabba_thief", 300, 3372.3, 5.0, -4798.9, 95, 0)
	
	--Mos Eisley Shuttleport
	spawnMobile("tatooine", "jabba_scout", 300, 3412.9, 5.0, -4664.3, -3, 0)
	spawnMobile("tatooine", "jabba_scout", 300, 3411.5, 5.0, -4659.4, -83, 0)
	spawnMobile("tatooine", "stormtrooper", 300, 3414.7, 5.6, -4660.7, -57, 0)
	spawnMobile("tatooine", "stormtrooper", 300, 3429.0, 5.6, -4638.7, -58, 0)
	spawnMobile("tatooine", "jabba_swooper", 300, 3417.3, 5.0, -4628.9, -122, 0)
	spawnMobile("tatooine", "jabba_scout", 300, 3432.7, 5.0, -4636.4, 0, 0)

end
