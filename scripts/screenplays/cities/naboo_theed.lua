NabooTheedScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "NabooTheedScreenPlay"
}

registerScreenPlay("NabooTheedScreenPlay", true)

function NabooTheedScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function NabooTheedScreenPlay:spawnSceneObjects()

spawnSceneObject("naboo", "object/creature/npc/theme_park/player_transport_theed_hangar.iff", -0.6, 7.9, 7.5, 1692104, 0, 0, 0, 0)
		
end

function NabooTheedScreenPlay:spawnMobiles()
	
end
