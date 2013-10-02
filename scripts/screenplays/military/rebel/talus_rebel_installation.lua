TalusRebelInstallation = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "TalusRebelInstallation"
}

registerScreenPlay("TalusRebelInstallation", true)

function TalusRebelInstallation:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

--spawn the travel terminals

function TalusRebelInstallation:spawnSceneObjects()

	local pCollector = spawnSceneObject("talus", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2388, 125, -4994, 0, 0, 0, 0, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Rebel Hideout - Corellia")
	createObserver(OBJECTRADIALUSED, "TalusRebelInstallation", "teleportHideout", pCollector)

		
	-- Terminals
	spawnSceneObject("talus", "object/tangible/terminal/terminal_character_builder.iff", 2375, 125.5, -4990, 0, 0, 0, 1, 0)
	spawnSceneObject("talus", "object/tangible/terminal/terminal_mission_rebel.iff", 2384, 125.5, -4989, 0, 0, 0, 1, 0)
	

	--Shuttle
		
	spawnSceneObject("talus", "object/tangible/event_perk/lambda_shuttle.iff", 2396, 125, -4987, 0, 0, 0, 1, 0)	
		
end

--spawn the NPCs

function TalusRebelInstallation:spawnMobiles()
	

end

--travel functions

function TalusRebelInstallation:teleportHideout(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isRebel() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("corellia", -6522, 0, 6035, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end