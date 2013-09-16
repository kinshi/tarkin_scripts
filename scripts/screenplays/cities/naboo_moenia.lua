MoeniaScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "MoeniaScreenPlay"
}

registerScreenPlay("MoeniaScreenPlay", true)

function MoeniaScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnSceneObjects()
--		self:spawnMobiles()
	end
end

-- Spawn Zephyr objects (travel terms, frog)

function MoeniaScreenPlay:spawnSceneObjects()

	local pCollector = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4717, 4, -4654, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Rebel Outpost - Rori")
	createObserver(OBJECTRADIALUSED, "MoeniaScreenPlay", "teleportRebelOutpost", pCollector)
	
	-- BLUEFROG
	--No need to add blue frog here, it is already loaded as part of the planetmanager

	--Shuttle
	--No need for a shuttle, the existing NPC starport serves as an adequate prop 
	--Players get here via F.A.R.T travel terminal at Moenia starport (Moenia is a Rebel stronghold)
	--No Interplanetary FART terminal for Moenia, Rebels will need to use civilian transport in/out of Naboo, BUT
	--Moenia SP will have Rebel sentries guareding the SP, recruiter and frog.
	
end

function MoeniaScreenPlay:spawnMobiles()

-- SENTRIES

--spawnMobile("naboo", "sentry_rebel_major", 360, , , , , 0)
spawnMobile("naboo", "sentry_specforce_sniper", 360, 4724.4, 4.2, -4685.7, 0, 0)
spawnMobile("naboo", "sentry_specforce", 360, 4702.0, 4.2, -4674.6, 36, 0)
spawnMobile("naboo", "sentry_specforce", 360, 4691.5, 4.2, -4649.4, 83, 0)
spawnMobile("naboo", "sentry_specforce", 360, 4752.1, 4.2, -4675.0, -55, 0)
spawnMobile("naboo", "sentry_specforce_captain", 360, 4716.0, 4.2, -4698.4, 5, 0)
spawnMobile("naboo", "sentry_specforce_squad_leader", 360, 4699.7, 4.2, -4691.4, 41, 0)
spawnMobile("naboo", "sentry_specforce_bombardier", 360, 4822.2, 4.2, -4700.8, -85, 0)
spawnMobile("naboo", "sentry_specforce_bombardier", 360, 4822.4, 4.2, -4708.8, -68, 0)
spawnMobile("naboo", "sentry_specforce_sniper", 360, 4827.4, 4.2, -4697.4, -48, 0)

end

-- Zephyr Travel Destinations

-- Rebel Outpost (Rori)
	
function MoeniaScreenPlay:teleportRebelOutpost(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("rori", 3691, 0, -6403, 0)
end
