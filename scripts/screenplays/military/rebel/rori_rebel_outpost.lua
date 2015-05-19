RoriRebelOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "RoriRebelOutpostScreenPlay"
}

registerScreenPlay("RoriRebelOutpostScreenPlay", true)

function RoriRebelOutpostScreenPlay:start()
	if (isZoneEnabled("rori")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

-- Spawn Zephyr objects (travel terms, frog)

function RoriRebelOutpostScreenPlay:spawnSceneObjects()

	local pCollector = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", 3703, 96.0, -6411, 0, -0.707107, 0, 0.707107, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Starbird Base - Rori")
	createObserver(OBJECTRADIALUSED, "RoriRebelOutpostScreenPlay", "teleportStarbird", pCollector)

	local pCollector2 = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", 3703, 96.0, -6417, 0, -0.707107, 0, 0.707107, 0)
	local collector2 = LuaSceneObject(pCollector2)
	local col2creo = LuaCreatureObject(pCollector2)
	col2creo:setOptionsBitmask(264)
	collector2:setCustomObjectName("\\#ee3377Travel to Moenia Starport - Naboo")
	createObserver(OBJECTRADIALUSED, "RoriRebelOutpostScreenPlay", "teleportMoenia", pCollector2)
	
	-- Turrets
	local pTurret1 = spawnSceneObject("rori", "object/installation/turret/turret_block_med.iff", 3664.8, 96.0, -6448.1, 0, 0, 0, 1, 0)
	setTurretFaction(pTurret1)

	local pTurret2 = spawnSceneObject("rori", "object/installation/turret/turret_block_med.iff", 3682.1, 96.0, -6472.1, 0, -0.707107, 0, 0.707107, 0)
	setTurretFaction(pTurret2)
	
	-- BLUEFROG
	--No need to add blue frog here, it is already loaded as part of the planetmanager

	--Shuttle
	--No need for a shuttle, the existing NPC starport serves as an adequate prop 
	--Players get here via F.A.R.T travel terminal at Moenia starport (Moenia is a Rebel stronghold)
	
end

function RoriRebelOutpostScreenPlay:spawnMobiles()

	--mobs

		--Patrols outside the walls
	spawnMobile("rori", "sentry_specforce_captain", 360, math.random(16) + 3618.3, 96.1, math.random(24) + -6469.6, math.random(360), 0)
	spawnMobile("rori", "sentry_rebel_major", 360, math.random(16) + 3618.3, 96.1, math.random(24) + -6469.6, math.random(360), 0)
	spawnMobile("rori", "sentry_specforce_combat_medic", 360, math.random(16) + 3618.3, 96.1, math.random(24) + -6469.6, math.random(360), 0)
	spawnMobile("rori", "sentry_specforce", 360, math.random(16) + 3618.3, 96.1, math.random(24) + -6469.6, math.random(360), 0)
	spawnMobile("rori", "sentry_specforce", 360, math.random(16) + 3618.3, 96.1, math.random(24) + -6469.6, math.random(360), 0)
	spawnMobile("rori", "sentry_specforce_squad_leader", 360, math.random(16) + 3618.3, 96.1, math.random(24) + -6469.6, math.random(360), 0)

	spawnMobile("rori", "sentry_specforce_captain", 360, math.random(16) + 3708.4, 96.1, math.random(24) + -6429.6, math.random(360), 0)
	spawnMobile("rori", "sentry_rebel_major", 360, math.random(16) + 3708.4, 96.1, math.random(24) + -6429.6, math.random(360), 0)
	spawnMobile("rori", "sentry_specforce", 360, math.random(16) + 3708.4, 96.1, math.random(24) + -6429.6, math.random(360), 0)
	spawnMobile("rori", "sentry_specforce", 360, math.random(16) + 3708.4, 96.1, math.random(24) + -6429.6, math.random(360), 0)
	spawnMobile("rori", "sentry_specforce", 360, math.random(16) + 3708.4, 96.1, math.random(24) + -6429.6, math.random(360), 0)
	spawnMobile("rori", "sentry_specforce", 360, math.random(16) + 3708.4, 96.1, math.random(24) + -6429.6, math.random(360), 0)

	spawnMobile("rori", "sentry_specforce_squad_leader", 360, 3696.0, 85.0, -6566.6, -110, 0)
	spawnMobile("rori", "sentry_specforce", 360, 3685.3, 86.8, -6573.1, 10, 0)
	spawnMobile("rori", "sentry_specforce", 360, 3664.1, 86.4, -6574.7, 160, 0)
	spawnMobile("rori", "sentry_specforce", 360, 3629.9, 83.8, -6570.1, -90, 0)

	spawnMobile("rori", "sentry_rebel_major", 360, 3654.9, 96.0, -6499.0, 180, 0)
	spawnMobile("rori", "sentry_specforce", 360, 3674.4, 96.0, -6499.0, 180, 0)

		--Outside
	spawnMobile("rori", "sentry_specforce_captain", 360, 3644, 96, -6404, 133, 0)
	spawnMobile("rori", "sentry_specforce_combat_medic", 360, 3662, 96, -6402, 162, 0)
	spawnMobile("rori", "sentry_specforce", 360, 3660, 96, -6443, 342, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 360, 3703, 96, -6404, 265, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 360, 3703, 96, -6431, 270, 0)
	spawnMobile("rori", "sentry_rebel_major", 360, 3694, 96, -6441, 0, 0)
	spawnMobile("rori", "sentry_specforce_captain", 360, 3679, 96, -6446, 210, 0)
	spawnMobile("rori", "sentry_specforce_squad_leader", 360, 3658, 96, -6443, 90, 0)
	spawnMobile("rori", "sentry_specforce_bombardier", 360, 3670, 96, -6443, 270, 0)
	spawnMobile("rori", "sentry_specforce", 360, 3641, 96, -6432, 90, 0)
	spawnMobile("rori", "sentry_specforce_captain", 360, 3671, 96, -6480, 270, 0)
	spawnMobile("rori", "sentry_rebel_major", 360, 3657, 96, -6483, 140, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 360, 3642, 96, -6477, 110, 0)
	spawnMobile("rori", "sentry_specforce_combat_medic", 360, 3656, 96, -6463, 80, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 360, 3684, 96, -6458, 280, 0)

		--Guard Tower with rifle trainer
	spawnMobile("rori", "sentry_rebel_major", 360, 3651, 103, -6485, 90, 0)
	spawnMobile("rori", "sentry_specforce_bombardier", 360, 3651, 103, -6489, 90, 0)
	spawnMobile("rori", "sentry_specforce_captain", 360, 3645, 103, -6494, 180, 0)
	spawnMobile("rori", "sentry_specforce_combat_medic", 360, -2.0, 2, 3.5, 90, 4505604)

		--Guard Tower with carbine trainer
	spawnMobile("rori", "sentry_specforce_captain", 360, 3635, 103, -6439, 91, 0)
	spawnMobile("rori", "sentry_specforce_bombardier", 360, 3632, 103, -6432, 0, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 360, -2.5, 2.0, 3.7, 70, 4505993)

		--Guard Tower with marksman trainer
	spawnMobile("rori", "sentry_specforce_combat_medic", 360, 3680, 103, -6491, 170, 0)
	spawnMobile("rori", "sentry_specforce_bombardier", 360, 3677, 103, -6481, 180, 0)
	spawnMobile("rori", "sentry_specforce", 360, 3685, 103, -6485, 50, 0)

		-- Tavern
	spawnMobile("rori", "sentry_specforce_combat_medic", 360, -8.5, 0.6, -7.3, 47, 4505636)
	spawnMobile("rori", "sentry_specforce", 360, 2.2, 0.6, -2.2, 243, 4505636)
	spawnMobile("rori", "sentry_specforce", 360, 2.1, 0.6, -6.5, 280, 4505636)
	spawnMobile("rori", "sentry_rebel_major", 360, 7.8, 0.6, -4.4, 270, 4505637)

		--Left Storage Shed with quest givers
	spawnMobile("rori", "sentry_specforce", 360, 0, 0.1, -6.0, 0, 4505666)

		--Right Storage Shed (Cloner)
	spawnMobile("rori", "sentry_specforce_combat_medic", 360, 5.3, 0.1, 0.9, 270, 4505609)
	spawnMobile("rori", "sentry_specforce_squad_leader", 360, 0, 0.1, -6.0, 0, 4505608)

	--misc
	spawnMobile("rori", "rebel_recruiter", 0, 3683, 96, -6460, -101, 0)

	--trainer
	spawnMobile("rori", "trainer_architect", 60, 3677, 96, -6418, 90, 0)
	spawnMobile("rori", "trainer_armorsmith", 60, 3676, 96, -6432, 90, 0)
	spawnMobile("rori", "trainer_carbine", 60, 3627, 104, -6433, 90, 0)
	spawnMobile("rori", "trainer_chef", 60, 3681, 96, -6426, 180, 0)
	spawnMobile("rori", "trainer_commando", 60, -1.6, 0.7, 2.7, 180, 4505792)
	spawnMobile("rori", "trainer_marksman", 60, 3684.5, 104, -6488.5, 260, 0)
	spawnMobile("rori", "trainer_rifleman", 60, 3649, 104, -6491.5, 315, 0)
	spawnMobile("rori", "trainer_weaponsmith", 60, 3681, 96, -6420, 0, 0)

	-- Gate Sentries

	spawnMobile("rori", "sentry_specforce", 300, 3672.2, 96.0, -6495.7, 179, 0)
	spawnMobile("rori", "sentry_specforce", 300, 3656.9, 96.0, -6496.6, 179, 0)
	spawnMobile("rori", "sentry_specforce", 300, math.random(12) + 3658.7, 96.1, math.random(14) + -6494.3, 179, 0)
	spawnMobile("rori", "sentry_specforce", 300, math.random(12) + 3658.7, 96.1, math.random(14) + -6494.3, 179, 0)
	spawnMobile("rori", "sentry_specforce", 300, math.random(12) + 3658.7, 96.1, math.random(14) + -6494.3, 179, 0)
	spawnMobile("rori", "sentry_specforce", 300, math.random(12) + 3658.7, 96.1, math.random(14) + -6494.3, 179, 0)
	spawnMobile("rori", "sentry_specforce", 300, math.random(12) + 3658.7, 96.1, math.random(14) + -6494.3, 179, 0)
	spawnMobile("rori", "gcw_rebel_defence_droid", 300, 3663.8, 96.0, 6488.4, 176, 0)

	-- Building Entrance Sentries

	spawnMobile("rori", "sentry_specforce", 300, 3678.5, 96.0, -6478.3, 0, 0)
	spawnMobile("rori", "sentry_specforce", 300, 3683.1, 96.0, -6478.3, 1, 0)
	spawnMobile("rori", "sentry_specforce", 300, 3694.9, 96.0, -6479.2, -2, 0)
	spawnMobile("rori", "sentry_specforce", 300, 3690.9, 96.7, -6482.6, 0, 0)
	spawnMobile("rori", "sentry_specforce", 300, 3684.9, 96.0, -6453.0, -88, 0)
	spawnMobile("rori", "sentry_specforce", 300, 3655.9, 96.0, -6468.8, 90, 0)
	spawnMobile("rori", "sentry_specforce", 300, 3655.7, 96.0, -6453.9, 90, 0)
	spawnMobile("rori", "sentry_specforce", 300, 3655.7, 96.0, -6449.8, 90, 0)	
	
end

-- Set Turret faction

function setTurretFaction(pTurret)
	if pTurret ~= nil then
		local turret = LuaTangibleObject(pTurret)
		turret:setFaction(FACTIONREBEL)
		turret:setPvpStatusBitmask(1)
	end
end

-- Zephyr Travel Destinations

-- Starbird base (Rori)
	
function RoriRebelOutpostScreenPlay:teleportStarbird(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isRebel() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("rori", -5310, 0, 5009, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
	return 0
end

function RoriRebelOutpostScreenPlay:teleportMoenia(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isRebel() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("naboo", 4731, 4, -4677, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
	return 0
end
