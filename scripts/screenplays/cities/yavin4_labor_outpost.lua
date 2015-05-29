Yavin4LaborOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "Yavin4LaborOutpostScreenPlay"
}

registerScreenPlay("Yavin4LaborOutpostScreenPlay", true)

function Yavin4LaborOutpostScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

function Yavin4LaborOutpostScreenPlay:spawnSceneObjects()

-- Travel Terminal
	local pCollector = spawnSceneObject("yavin4", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6926.93, 73, -5703.08, 0, -0.703275, 0, 0.710918, 0)
	local collector = LuaSceneObject(pCollector0)
	collector:setCustomObjectName("\\#ee3377 Theed (Naboo)")
	createObserver(OBJECTRADIALUSED, "Yavin4LaborOutpostScreenPlay", "teleportNabooTheed", pCollector0)

--Labor Outpost SP
spawnSceneObject("yavin4", "object/creature/npc/theme_park/player_transport.iff", -6961.0, 73.0, -5717.0, 0, 0)

end

function Yavin4LaborOutpostScreenPlay:spawnMobiles()

	--Atm adding the file to cites folder to get it out of the way.
end

function Yavin4LaborOutpostScreenPlay:teleportNabooTheed(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("naboo", -4851, 0, 4172, -90)
	return 0
end
