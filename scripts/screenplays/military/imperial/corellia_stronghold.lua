StrongholdScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "StrongholdScreenPlay",


}

registerScreenPlay("StrongholdScreenPlay", true)

function StrongholdScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnSceneObjects()
		self:spawnMobiles()

	end
end

function StrongholdScreenPlay:spawnSceneObjects()

	-- Travel terminal

	local pCollector = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4610, 25, -5791, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to  Emperor's Retreat - (Naboo)")
	createObserver(OBJECTRADIALUSED, "StrongholdScreenPlay", "teleportImpRetreat", pCollector)
	
	local pCollector2 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4617, 25, -5791, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector2)
	local col2creo = LuaCreatureObject(pCollector2)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Imperial Detachment HQ - (Tatooine)")
	createObserver(OBJECTRADIALUSED, "StrongholdScreenPlay", "teleportTatHQ", pCollector2)
	
	local pCollector3 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4617, 25, -5776, 0, 0, 0, 0, 0)
	local collector = LuaSceneObject(pCollector3)
	local col2creo = LuaCreatureObject(pCollector3)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - (Talus)")
	createObserver(OBJECTRADIALUSED, "StrongholdScreenPlay", "teleportTalus", pCollector3)

	local pCollector4 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4618.8, 25.0, -5775.8, 0, 0, 0, 0, 0)
	local collector = LuaSceneObject(pCollector4)
	local col2creo = LuaCreatureObject(pCollector4)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - (Dantooine)")
	createObserver(OBJECTRADIALUSED, "StrongholdScreenPlay", "teleportDantooine", pCollector4)

	local pCollector4 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4614.8, 25.0, -5775.2, 0, 0, 0, 0, 0)
	local collector = LuaSceneObject(pCollector4)
	local col2creo = LuaCreatureObject(pCollector4)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Yavin4 Imperial Base - (Yavin4)")
	createObserver(OBJECTRADIALUSED, "StrongholdScreenPlay", "teleportYavin4", pCollector4)
			
	-- Terminals

	spawnSceneObject("corellia", "object/tangible/terminal/terminal_character_builder.iff", 4624, 25, -5759, 0, 0, 0, 1, 0)
	spawnSceneObject("corellia", "object/tangible/terminal/terminal_mission_imperial.iff", 4619, 25, -5759, 0, 0, 0, 1, 0)


end

function StrongholdScreenPlay:spawnMobiles()

	spawnMobile("corellia", "dark_trooper", 360, 4696.72, 25, -5797.99, 198.662, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4663.22, 25, -5781.71, 0.4, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4662.22, 25, -5769.71, 177.4, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4694.46, 25, -5803.03, 351.991, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4689.06, 25, -5796.24, 257.913, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4694.47, 25, -5806.45, 224.026, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4696.33, 25, -5804.40, 253.399, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4683.96, 25, -5743.68, 348.127, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4675.06, 25, -5746.75, 279.993, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4687.68, 25, -5754.00, 128.516, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4675.80, 25, -5752.56, 288.664, 0)
	spawnMobile("corellia", "dark_trooper", 360, 4679.01, 25, -5742.91, 9.66, 0)

	spawnMobile("corellia", "imperial_first_lieutenant", 300, 4638.27, 25, -5777.52, 110, 0)
	spawnMobile("corellia", "imperial_first_lieutenant", 300, 4637.55, 25, -5784.69, 185, 0)
	spawnMobile("corellia", "imperial_first_lieutenant", 300, 4635.64, 25, -5802.22, 92, 0)
	spawnMobile("corellia", "imperial_major", 300, 4629.71, 25, -5770.51, 238, 0)
	spawnMobile("corellia", "imperial_surface_marshall", 300, 4531.47, 30.7809, -5823.83, 217, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4497.73, 28.5915, -5829.8, 277.53, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4680.98, 25, -5821.58, 250, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4678.34, 25, -5829.9, 145, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4675.82, 25, -5825, 195, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4678.32, 25, -5824.85, 256, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4688.47, 25, -5766.6, 272, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4693.39, 25, -5762.66, 34, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4695.82, 25, -5761.96, 325, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4691.89, 25, -5774.64, 209, 0)
	spawnMobile("corellia", "stormtrooper", 300, 4691.92, 25, -5763.05, 240, 0)
	spawnMobile("corellia", "stormtrooper_squad_leader", 300, 4675.99, 25, -5809.56, 216, 0)
	spawnMobile("corellia", "stormtrooper_squad_leader", 300, 4678.77, 25, -5757.9, 226, 0)

	spawnMobile("corellia", "imperial_first_lieutenant", 400, -0.197, 0.125, -1.714, 0, 2715881)
	spawnMobile("corellia", "imperial_first_lieutenant", 400, 0.506, 0.125, -1.081, 0, 2716039)
	spawnMobile("corellia", "stormtrooper_medic", 400, 0.673, 0.125, -0.651, 0, 2716032)
	spawnMobile("corellia", "storm_commando", 400, -3.022, 0.125, -3.362, 0, 2716035)
	spawnMobile("corellia", "stormtrooper", 400, -0.207, 0.125, -1.570, 0, 2715952)
	spawnMobile("corellia", "stormtrooper", 400, 1.455, 0.125, -3.532, 0, 2715952)
	spawnMobile("corellia", "stormtrooper", 400, 0.879, 0.125, -2.578, 159, 2715909)
	spawnMobile("corellia", "stormtrooper", 400, -0.805, 0.125, -3.681, 226, 2715909)
	spawnMobile("corellia", "assault_trooper", 240, -0.197, 0.125, 1.538, 239, 2715902)
	spawnMobile("corellia", "imperial_surface_marshall", 400, 4.991, 0.125, -4.244, 64.122, 2715904)
	spawnMobile("corellia", "imperial_noncom", 400, 0, 0.125, -2.85, 0, 2715916)
	spawnMobile("corellia", "imperial_noncom", 400, 0, 0.125, -5.25, 0, 2715916)
	spawnMobile("corellia", "stormtrooper", 400, 0.3, 0.125, 5.747, 202, 2715914)
	spawnMobile("corellia", "imperial_trooper", 400, 0.49, 0.125, -2.033, 0, 2715959)
	spawnMobile("corellia", "imperial_trooper", 400, -1.11, 0.125, -2.76, 0, 2715959)

	-- Building Sentries

	spawnMobile("corellia", "sentry_stormtrooper", 400, 4682.8, 25.0, -5829.8, -45, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4679.7, 25.0, -5832.9, -45, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4690.8, 25.0, -5821.8, -45, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4693.8, 25.0, -5818.8, -45, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4701.7, 25.0, -5810.9, -45, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4704.8, 25.0, -5807.8, -45, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4704.8, 25.0, -5760.2, -135, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4701.8, 25.0, -5757.2, -135, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4693.8, 25.0, -5749.2, -135, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4690.7, 25.0, -5746.1, -135, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4682.9, 25.0, -5738.3, -135, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4679.8, 25.0, -5735.2, -135, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4623.2, 25.0, -5760.2, 135, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4620.2, 25.0, -5763.2, 135, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4619.1, 25.0, -5804.7, 45, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4622.2, 25.0, -5807.8, 45, 0)

	-- Gate/Base Entry Point Sentries

	spawnMobile("corellia", "sentry_stormtrooper", 400, 4680.9, 25.0, -5717.1, -3, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4647.4, 25.0, -5716.5, -5, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4661.9, 25.0, -5716.1, 0, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4663.2, 25.0, -5852.8, 180, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4646.1, 25.0, -5852.3, 180, 0)
	spawnMobile("corellia", "sentry_stormtrooper", 400, 4680.9, 25.0, -5850.7, 180, 0)
	spawnMobile("corellia", "at_st", 400, 4661.8, 25.0, -5850.3, 180, 0)
	spawnMobile("corellia", "at_st", 400, 4663.0, 25.0, -5720.2, 0, 0)
	spawnMobile("corellia", "at_at", 400, 4644.5, 25.0, -5784.1, 90, 0)

end

function StrongholdScreenPlay:teleportImpRetreat(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("naboo", 2437.8, 0, -3895.7, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

function StrongholdScreenPlay:teleportTatHQ(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("tatooine", -2583, 0, 2072, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

function StrongholdScreenPlay:teleportTalus(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("talus", -2212, 0, 2325, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

function StrongholdScreenPlay:teleportDantooine(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("dantooine", -4222.4, 3.0, -2360.9, -90)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

function StrongholdScreenPlay:teleportYavin4(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("yavin4", 4042.2, 3.0, -6228.3, -90)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end
