LokRebelSafehouseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "LokRebelSafehouseScreenPlay"
}

registerScreenPlay("LokRebelSafehouseScreenPlay", true)

function LokRebelSafehouseScreen:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
	end
end

function LokRebelSafehouseScreenPlay:spawnSceneObjects()

	local pCollector = spawnSceneObject("lok", "object/tangible/furniture/imperial/data_terminal_s1.iff", -4766.2, 4.0, 3512.7, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Anchorhead - Tatooine")
	createObserver(OBJECTRADIALUSED, "LokRebelSafehouseScreenPlay", "teleportAH", pCollector)
	
	-- Terminals
	
	spawnSceneObject("lok", "object/tangible/terminal/terminal_character_builder.iff", -4747.8, 6.1, 3522.8, 0, 1, 0, 0, 0)
	spawnSceneObject("lok", "object/tangible/terminal/terminal_mission_rebel.iff", -4767.6, 4.0, 3511.3, 0, 1, 0, 0, 0)
	

	--Shuttle
	--No need for a shuttle prop, the existing static shuttle serves
	--Rebel Players reach the safehouse from AH on Tat
	
	-- No need for recruiter, the Major serves as one
	
	--TODO
	-- AH still needs "sentry" class NPCs placed (replace the guards at the gates and the shuttle with Sentries
	
end

function LokRebelSafehouseScreen:spawnMobiles()
	
	spawnMobile("lok", "rebel_major", 300, -4750, 4, 3520, -130, 0)

end

--travel functions

function RebelHideoutScreenPlay:teleportAH(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isRebel() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("tatooine", 48, 0, -5342, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end