NabooAmidalasBeachScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "NabooAmidalasBeachScreenPlay",

}

registerScreenPlay("NabooAmidalasBeachScreenPlay", true)

function NabooAmidalasBeachScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnSceneObjects()
		self:spawnMobiles()

	end
end

function NabooAmidalasBeachScreenPlay:spawnSceneObjects()

--Lake Retreat SHuttle
spawnSceneObject("naboo", "object/creature/npc/theme_park/player_shuttle.iff", -5474.0, 1-149.0, -21.0, 0, 180)

end

function NabooAmidalasBeachScreenPlay:spawnMobiles()

	--Outside
	spawnMobile("naboo", "informant_npc_lvl_2", 0,-5548,-150,-13,225,0)
	spawnMobile("naboo", "informant_npc_lvl_2", 0,-5476,-150,-76,270,0)

end
