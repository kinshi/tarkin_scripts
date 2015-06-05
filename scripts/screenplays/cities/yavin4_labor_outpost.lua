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

--Labor Outpost SP
--spawnSceneObject("yavin4", "object/creature/npc/theme_park/player_transport.iff", -6961.0, 73.0, -5717.0, 0, 0)

end

function Yavin4LaborOutpostScreenPlay:spawnMobiles()

	--Atm adding the file to cites folder to get it out of the way.
end

