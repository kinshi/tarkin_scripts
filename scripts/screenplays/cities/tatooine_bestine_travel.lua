BestineScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "BestineScreenPlay"
}

registerScreenPlay("BestineScreenPlay", true)

function BestineScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnSceneObjects()
		--self:spawnMobiles()
	end
end

function BestineScreenPlay:spawnSceneObjects()

	local pCollector = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1389.0, 12, -3584.0, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
--	local col2creo = LuaCreatureObject(pCollector)
--	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Theed - Naboo")
	createObserver(OBJECTRADIALUSED, "BestineScreenPlay", "teleportTheed", pCollector)
	
	local pCollector2 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1386.0, 12, -3584.0, 0, 0, 0, 1, 0)
	local collector2 = LuaSceneObject(pCollector2)
--	local col2creo = LuaCreatureObject(pCollector2)
--	col2creo:setOptionsBitmask(264)
	collector2:setCustomObjectName("\\#ee3377Travel to Coronet - Corellia")
	createObserver(OBJECTRADIALUSED, "BestineScreenPlay", "teleportCoronet", pCollector2)
	
	local pCollector3 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1383.0, 12, -3584.0, 0, 0, 0, 1, 0)
	local collector3 = LuaSceneObject(pCollector3)
--	local col2creo = LuaCreatureObject(pCollector3)
--	col2creo:setOptionsBitmask(264)
	collector3:setCustomObjectName("\\#ee3377Travel to Nyms Stronghold - Lok")
	createObserver(OBJECTRADIALUSED, "BestineScreenPlay", "teleportNyms", pCollector3)

--Bestine SP
spawnSceneObject("tatooine", "object/creature/npc/theme_park/player_transport.iff", -1381, 12.0, -3572, 0, -90)

--Bestine Shuttle
spawnSceneObject("tatooine", "object/creature/npc/theme_park/player_shuttle.iff", -1078, 12.0, -3564, 0, 180)


end

--function BestineScreenPlay:spawnMobiles()
-- end

-- Bestine Travel Destinations
	
function BestineScreenPlay:teleportTheed(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("naboo", -4858, 0, 4164, 0)
end

function BestineScreenPlay:teleportCoronet(pCollector2, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("corellia", -66, 0, -4711, 0)
end

function BestineScreenPlay:teleportNyms(pCollector3, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("lok", 478, 0, 5511, 0)
end
