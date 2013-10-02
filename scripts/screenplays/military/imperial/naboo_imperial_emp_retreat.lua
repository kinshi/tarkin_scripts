NabooImperialEmpRetreatScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "NabooImperialEmpRetreatScreenPlay",
}

registerScreenPlay("NabooImperialEmpRetreatScreenPlay", true)

function NabooImperialEmpRetreatScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
--		self:initializeLootContainers()  --Why is this here, this place has no loot boxes???
	end
end

function NabooImperialEmpRetreatScreenPlay:spawnSceneObjects()

	-- Travel terminal

	local pCollector = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2435.4, 292.0, -3899.7, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Kaadara Outpost - (Naboo)")
	createObserver(OBJECTRADIALUSED, "NabooImperialEmpRetreatScreenPlay", "teleportImpOutpost", pCollector)

	local pCollector2 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2437.2, 292.0, -3899.3, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector2)
	local col2creo = LuaCreatureObject(pCollector2)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - (Rori)")
	createObserver(OBJECTRADIALUSED, "NabooImperialEmpRetreatScreenPlay", "teleportImpEncampment", pCollector2)
	
	local pCollector3 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2435, 292.0, -3896, 0, 0, 0, 0, 0)
	local collector = LuaSceneObject(pCollector3)
	local col2creo = LuaCreatureObject(pCollector3)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Imperial Stronghold - (Corellia)")
	createObserver(OBJECTRADIALUSED, "NabooImperialEmpRetreatScreenPlay", "teleportImpStronghold", pCollector3)
	
	local pCollector4 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2437, 292.0, -3896, 0, 0, 0, 0, 0)
	local collector = LuaSceneObject(pCollector4)
	local col2creo = LuaCreatureObject(pCollector4)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Imperial Detachment HQ - (Tatooine)")
	createObserver(OBJECTRADIALUSED, "NabooImperialEmpRetreatScreenPlay", "teleportImpHQ", pCollector4)
			
	-- Terminals

	spawnSceneObject("naboo", "object/tangible/terminal/terminal_character_builder.iff", 2440.9, 292.0, -3890.5, 0, 0, 0, 1, 0)
	spawnSceneObject("naboo", "object/tangible/terminal/terminal_mission_imperial.iff", 2431.1, 292.0, -3911.5, 0, 0, 0, 1, 0)

end

function NabooImperialEmpRetreatScreenPlay:spawnMobiles()

	--
	spawnMobile("naboo", "sentry_stormtrooper", 360, 2438.1, 292.0, -3909.5, 169, 0)
	spawnMobile("naboo", "sentry_stormtrooper", 360, 2447.1, 292.0, -3907.8, 169, 0)
	--
	spawnMobile("naboo", "sentry_stormtrooper_rifleman", 360, 2428.2, 292.0, -3929.3, 77, 0)
	spawnMobile("naboo", "sentry_stormtrooper_sniper", 360, 2431.3, 292.0, -3944.4, 81, 0)
	spawnMobile("naboo", "sentry_imperial_major", 360, 2422.8, 292.0, -3954.6, 171, 0)
	--
	spawnMobile("naboo", "sentry_stormtrooper_combat_medic", 360, 2412.2, 292.0, -3941.2, 77, 0)
	spawnMobile("naboo", "sentry_stormtrooper_bombardier", 360, 2418.7, 292.0, -3911.8, -161, 0)
	--
	spawnMobile("naboo", "sentry_stormtrooper_bombardier", 360, 2447.4, 292.0, -3900.9, -110, 0)
	spawnMobile("naboo", "sentry_stormtrooper_bombardier", 360, 2437.4, 292.0, -3904.9, 70, 0)
	
end

	
function NabooImperialEmpRetreatScreenPlay:teleportImpOutpost(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("naboo", 5333, 0, 6433, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

function NabooImperialEmpRetreatScreenPlay:teleportImpEncampment(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("rori", -5573.4, 0, -5620.9, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

function NabooImperialEmpRetreatScreenPlay:teleportImpStronghold(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("corellia", 4630, 0, -5784, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

function NabooImperialEmpRetreatScreenPlay:teleportImpHQ(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("tatooine", -2583, 0, 2072, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end
