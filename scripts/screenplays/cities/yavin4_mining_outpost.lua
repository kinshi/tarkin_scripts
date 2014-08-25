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
spawnSceneObject("yavin4", "object/creature/npc/theme_park/player_transport.iff", -294.0, 48.0, 4879.0, 0, 84)

end

function Yavin4MiningOutpostScreenPlay:spawnMobiles()

	--Atm adding the file to cites folder to get it out of the way.
end
