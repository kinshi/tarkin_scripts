Yavin4MiningOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "Yavin4MiningOutpostScreenPlay"
}

registerScreenPlay("Yavin4MiningOutpostScreenPlay", true)

function Yavin4MiningOutpostScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

function Yavin4MiningOutpostScreenPlay:spawnSceneObjects()

--Mining Outpost SP
spawnSceneObject("yavin4", "object/creature/npc/theme_park/player_transport.iff", -302.0, 35.0, 4862.0, 0, 90)

end

function Yavin4MiningOutpostScreenPlay:spawnMobiles()

	--Atm adding the file to cites folder to get it out of the way.
end
