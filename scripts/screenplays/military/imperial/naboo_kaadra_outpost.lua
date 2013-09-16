NabooKaadraOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "NabooKaadraOutpostScreenPlay"
}

registerScreenPlay("NabooKaadraOutpostScreenPlay", true)

function NabooKaadraOutpostScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

-- Spawn Zephyr objects (travel terms, frog)

function NabooKaadraOutpostScreenPlay:spawnSceneObjects()

	local pCollector = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 5331, -197, 6420, 0, 0, 0, 0, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - Rori")
	createObserver(OBJECTRADIALUSED, "NabooKaadraOutpostScreenPlay", "teleportRoriOutpost", pCollector)

	local pCollector2 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 5328, -197.0, 6420, 0, 0, 0, 0, 0)
	local collector = LuaSceneObject(pCollector2)
	local col2creo = LuaCreatureObject(pCollector2)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Emperor's Retreat -(Naboo)")
	createObserver(OBJECTRADIALUSED, "NabooKaadraOutpostScreenPlay", "teleportImpRetreat", pCollector2)
	
	-- BLUEFROG
	spawnSceneObject("naboo", "object/tangible/terminal/terminal_character_builder.iff", 5356, -197, 6429, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/tangible/terminal/terminal_mission_imperial.iff", 5356, -197, 6433, 0.5, 0.260075, 0, 0.965588, 0)
	
end
function NabooKaadraOutpostScreenPlay:spawnMobiles()
	--mobs
		--Outside

	--misc
	spawnMobile("naboo", "imperial_recruiter", 0, 5363, -197, 6432, -101, 0)

	--trainer

	-- SENTRIES
	
	spawnMobile("naboo", "sentry_stormtrooper", 360, 5369.9, -197.3, 6451.6, -22, 0)
	spawnMobile("naboo", "sentry_stormtrooper", 360, 5358.2, -197.4, 6449.8, -26, 0)
	--
	spawnMobile("naboo", "sentry_stormtrooper_rifleman", 360, 5377.1, -197.1, 6443.9, -95, 0)
	spawnMobile("naboo", "sentry_stormtrooper_sniper", 360, 5365.3, -197.0, 6432.6, -10, 0)
	spawnMobile("naboo", "sentry_stormtrooper_squad_leader", 360, 5354.2, -197.3, 6440.5, 80, 0)
	--
	spawnMobile("naboo", "sentry_stormtrooper_combat_medic", 360, 5378.7, -196.3, 6411.0, 169, 0)
	spawnMobile("naboo", "sentry_stormtrooper_rifleman", 360, 5362.7, -196.4, 6408.7, 169, 0)

	spawnMobile("naboo", "sentry_stormtrooper_bombardier", 360, 5329.9, -196.9, 6419.9, -2, 0)
	spawnMobile("naboo", "sentry_stormtrooper_bombardier", 360, 5336.7, -197.0, 6424.6, -63, 0)
	
	end

-- Zephyr Travel Destinations


function NabooKaadraOutpostScreenPlay:teleportRoriOutpost(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("rori", -5566, 0, -5627, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

function NabooKaadraOutpostScreenPlay:teleportImpRetreat(pCollector2, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("naboo", 2437.8, 0, -3895.7, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end	
end
