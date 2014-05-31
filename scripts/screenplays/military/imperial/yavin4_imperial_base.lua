Yavin4ImperialBaseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("Yavin4ImperialBaseScreenPlay", true)

function Yavin4ImperialBaseScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

function Yavin4ImperialBaseScreenPlay:spawnSceneObjects()

	local pCollector = spawnSceneObject("yavin4", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4042.3, 37.0, -6222.0, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Imperial Stronghold - Corellia")
	createObserver(OBJECTRADIALUSED, "StrongholdScreenPlay", "teleportImpStronghold", pCollector)
	
end

function Yavin4ImperialBaseScreenPlay:spawnMobiles()
	
	spawnMobile("yavin4", "stormtrooper", 300, 4025.1, 18.6, -6509.2, 180, 0)
	spawnMobile("yavin4", "stormtrooper", 300, 4021.6, 18.8, -6509.2, 180, 0)

	spawnMobile("yavin4", "stormtrooper_bombardier", 300, 4013.6, 38.1, -6324.8, 90, 0)
	spawnMobile("yavin4", "stormtrooper_sniper", 300, 4000.6, 36.9, -6289.3, 90, 0)
	spawnMobile("yavin4", "imperial_colonel", 300, 4051.7, 36.9, -6255.1, 90, 0)
	spawnMobile("yavin4", "stormtrooper", 300, 4051.7, 36.9, -6258.6, 0, 0)
	spawnMobile("yavin4", "stormtrooper", 300, 4008.7, 36.9, -6215.6, 180, 0)
	spawnMobile("yavin4", "stormtrooper", 300, 4004.8, 36.9, -6251.1, 0, 0)
	spawnMobile("yavin4", "stormtrooper", 300, 4052.7, 36.9, -6214.8, -180, 0)

	spawnMobile("yavin4", "commoner_technician", 300, 4001.0, 36.9, -6229.8, -75, 0)
	spawnMobile("yavin4", "commoner", 300, 3993.0, 36.9, -6269.1, 45, 0)
	spawnMobile("yavin4", "commoner_old", 300, 3996.7, 36.9, -6270.0, 0, 0)
	spawnMobile("yavin4", "commoner", 300, 3997.0, 36.9, -6267.2, -135, 0)
	spawnMobile("yavin4", "pilot", 300, 4050.0, 36.9, -6226.2, -35, 0)
	spawnMobile("yavin4", "pilot", 300, 4038.4, 36.9, -6244.6, -163, 0)

	spawnMobile("yavin4", "stormtrooper_medic", 300, 4.0, 0, 2.2, 90, 8735498)
	spawnMobile("yavin4", "stormtrooper", 300, 0, 0, -5.6, 0, 8735497)
	spawnMobile("yavin4", "imperial_recruiter", 300, 5.2, 0.1, -1.8, -178, 8735499)

	spawnMobile("yavin4", "imperial_medic", 300, 4.9, 0, 1.5, 90, 8735519)
	spawnMobile("yavin4", "imperial_trooper", 300, 0, 0, -5.6, 0, 8735518)


	-- Gate Sentries
	spawnMobile("yavin4", "at_st", 720, 4028.7, 37.0, -6349.5, 175, 0)

	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4009.5, 37.0, -6188.0, 0, 0)
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4018.4, 37.0, -6185.0, -90, 0)
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4046.7, 37.0, -6185.3, 90, 0)
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4053.4, 37.0, -6188.0, 0, 0)
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4041.6, 37.0, -6273.2, -89, 0)
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4021.0, 37.0, -6273.5, 90, 0)

	-- Lambda Shuttle Sentries
	spawnMobile("yavin4", "stormtrooper", 300, 4041.3, 37.0, -6256.7, 0, 0)
	spawnMobile("yavin4", "stormtrooper", 300, 4041.2, 37.0, -6253.0, 179, 0)
	
	-- Shuttle Building Sentries
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4047.3, 37.0, -6219.0, 90, 0)
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4047.3, 37.0, -6215.2, 90, 0)

	-- Building Entrance Sentries
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4001.7, 37.0, -6209.2, -179, 0)
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 3995.1, 37.0, -6209.0, -170, 0)
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4061.2, 37.0, -6209.1, -179, 0)
	spawnMobile("yavin4", "sentry_stormtrooper", 300, 4068.0, 37.0, -6209.1, -179, 0)
	
end

function StrongholdScreenPlay:teleportImpStronghold(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("corellia", 4621.7, 0, -5792.2, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

