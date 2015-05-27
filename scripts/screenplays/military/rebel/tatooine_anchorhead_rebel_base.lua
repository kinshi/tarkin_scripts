AnchorheadRebelBaseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "AnchorheadRebelBaseScreenPlay"
}

registerScreenPlay("AnchorheadRebelBaseScreenPlay", true)

function AnchorheadRebelBaseScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

--spawn the travel terminals

function AnchorheadRebelBaseScreenPlay:spawnSceneObjects()

	local pCollector = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", 51.8, 52.0, -5335.9, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Rebel Hideout - Corellia")
	createObserver(OBJECTRADIALUSED, "AnchorheadRebelBaseScreenPlay", "teleportHideout", pCollector)

	local pCollector2 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", 48.9, 52.0, -5335.9, 0, 0, 0, 1, 0)
	local collector2 = LuaSceneObject(pCollector2)
	local col2creo = LuaCreatureObject(pCollector2)
	col2creo:setOptionsBitmask(264)
	collector2:setCustomObjectName("\\#ee3377Travel to Moenia Starport - Naboo")
	createObserver(OBJECTRADIALUSED, "AnchorheadRebelBaseScreenPlay", "teleportMoenia", pCollector2)
	
	local pCollector3 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", 46.1, 52.0, -5335.9, 0, 0, 0, 1, 0)
	local collector3 = LuaSceneObject(pCollector3)
	local col2creo = LuaCreatureObject(pCollector3)
	col2creo:setOptionsBitmask(264)
	collector3:setCustomObjectName("\\#ee3377Travel to Rebel Safehouse - Lok")
	createObserver(OBJECTRADIALUSED, "AnchorheadRebelBaseScreenPlay", "teleportSafehouse", pCollector3)
	
	-- BLUEFROG
	--No need to add blue frog here, it is already in the Anchorhead cantina

	--Shuttle
	--No need for a shuttle prop, the existing NPC shuttleport serves
	--Rebel Players reach AH from the Rebel Hideout on Corellia or the Moenia Starport. AH is the only connector to the safehouse on Lok
	
	-- No need for recruiter, AH already has one
	
	--TODO
	-- AH still needs "sentry" class NPCs placed (replace the guards at the gates and the shuttle with Sentries
	
end

--spawn the NPCs

function AnchorheadRebelBaseScreenPlay:spawnMobiles()
	
	-- Gate Locations
	
	spawnMobile("tatooine", "sentry_specforce", 360, 125.7, 52.0, -5369.3, 110, 0)
	spawnMobile("tatooine", "sentry_specforce_sniper", 360, 119.4, 52.0, -5340.9, 60, 0)
	spawnMobile("tatooine", "sentry_specforce_combat_medic", 360, 122.4, 52.0, -5330.6, -154, 0)
	spawnMobile("tatooine", "sentry_specforce_squad_leader", 360, 149.4, 52.0, -5325.5, 29, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 32.2, 51.7, -5347.6, -88, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 32,4, 51.9, -5340.3, -88, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 132.8, 52.0, -5375.0, 0, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 132.8, 52.0, -5368.8, 180, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 136.0, 52.0, -5369.6, 90, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 148.3, 52.0, -5319.3, 76, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 158.0, 52.0, -5328.8, -40, 0)
	spawnMobile("tatooine", "sentry_specforce_sniper", 360, 34.2, 51.2, -5351.3, -30, 0)
	spawnMobile("tatooine", "sentry_specforce_sniper", 360, 36.6, 52.0, -5337.6, -155, 0)
	spawnMobile("tatooine", "gcw_rebel_defence_droid", 360, 32.4, 51.7, -5344.4, -96, 0)
	spawnMobile("tatooine", "gcw_rebel_defence_droid", 360, 154.9, 52.0, -5317.6, 16, 0)

	-- Shuttleport

	spawnMobile("tatooine", "sentry_specforce", 360, 64.1, 52.0, -5308.4, 140, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 59.7, 52.6, -5305.4, 0, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 33.5, 52.6, -5305.3, 0, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 30.2, 52.2, -5307.6, -90, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 30.1, 52.1, -5382.2, -90, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 31.5, 52.3, -5334.2, -90, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 61.0, 52.3, -5334.6, 140, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 54.4, 52.0, -5346.8, -26, 0)

	-- Other outside points

	spawnMobile("tatooine", "sentry_specforce", 360, 108.6, 52.0, -5306.1, 0, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 112.0, 52.0, -5306.1, 0, 0)
	spawnMobile("tatooine", "specforce_heavy_weapons_specialist", 360, 108.6, 52.0, -5313.9, 0, 0)
	spawnMobile("tatooine", "specforce_master_sergeant", 360, 112.0, 52.0, -5313.9, 0, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 114.2, 52.0, -5321.8, -90, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 103.4, 52.0, -5322.2, 90, 0)
	spawnMobile("tatooine", "specforce_heavy_weapons_specialist", 360, 81.9, 52.0, -5401.4, -130, 0)
	spawnMobile("tatooine", "specforce_heavy_weapons_specialist", 360, 128.7, 52.0, -5433.4, 148, 0)
	spawnMobile("tatooine", "specforce_major", 360, 132.8, 52.0, -5404.3, 82, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 131.2, 52.0, -5400.2, 145, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 132.8, 52.0, -5407.7, 0, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 103.5, 52.0, -5327.8, 16, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 152.7, 52.0, -5325.5, 29, 0)

	-- Cloning Center

	spawnMobile("tatooine", "sentry_specforce", 360, 71.6, 52.0, -5360.7, 90, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 71.8, 52.0, -5356.6, 90, 0)

	-- Rebel Recruiter

	spawnMobile("tatooine", "sentry_specforce", 360, 119.9, 52.0, -5362.1, -90, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 123.2, 53.0, -5366.6, -90, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 70.7, 52.0, -5351.6, 45, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 65.5, 52.0, -5349.7, 0, 0)

end

--travel functions

function AnchorheadRebelBaseScreenPlay:teleportHideout(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isRebel() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("corellia", -6522, 0, 6035, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
	return 0
end

function AnchorheadRebelBaseScreenPlay:teleportMoenia(pCollector, pPlayer)
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

function AnchorheadRebelBaseScreenPlay:teleportSafehouse(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isRebel() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("lok", -4766, 0, 3512, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
	return 0
end
