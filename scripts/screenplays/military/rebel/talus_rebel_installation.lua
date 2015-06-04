TalusRebelInstallation = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "TalusRebelInstallation"
}

registerScreenPlay("TalusRebelInstallation", true)

function TalusRebelInstallation:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end


function TalusRebelInstallation:spawnSceneObjects()

	-- Terminals
	spawnSceneObject("talus", "object/tangible/terminal/terminal_character_builder.iff", 2375, 125.5, -4990, 0, 0, 0, 1, 0)
	spawnSceneObject("talus", "object/tangible/terminal/terminal_mission_rebel.iff", 2384, 125.5, -4989, 0, 0, 0, 1, 0)
	

	--Shuttle
		
	spawnSceneObject("talus", "object/tangible/event_perk/lambda_shuttle.iff", 2396, 125, -4987, 0, 0, 0, 1, 0)	
		
end

--spawn the NPCs

function TalusRebelInstallation:spawnMobiles()

	-- Rebel Recruiter

	spawnMobile("talus", "rebel_recruiter", 300, 2372.7, 125.6, -4983.7, 1, 0)	
	-- Main Building

	spawnMobile("talus", "sentry_specforce", 300, 2380.6, 125.4, -4989.4, 176, 0)
	spawnMobile("talus", "sentry_specforce", 300, 2376.4, 125.6, -4989.6, 178, 0)

	-- Perimeter

	spawnMobile("talus", "sentry_specforce", 300, 2371.0, 125.1, -4996.8, 177, 0)
	spawnMobile("talus", "sentry_specforce", 300, 2337.7, 124.1, -4998.2, 90, 0)
	spawnMobile("talus", "sentry_specforce", 300, 2337.0, 124.2, -4997.1, 179, 0)
	spawnMobile("talus", "sentry_specforce", 300, 2336.9, 128.3, -4981.0, -90, 0)
	spawnMobile("talus", "sentry_specforce", 300, 2337.9, 128.5, -4979.8, 0, 0)
	spawnMobile("talus", "sentry_specforce", 300, 2370.2, 126.2, -4979.6, 0, 0)
	spawnMobile("talus", "gcw_rebel_defence_droid", 300, 2379.9, 124.7, -5004.4, -176, 0)

	-- Shuttle

	spawnMobile("talus", "sentry_specforce", 300, 2387.3, 125.6, -4983.7, 1, 0)
	spawnMobile("talus", "sentry_specforce", 300, 2403.9, 125.1, -4982.4, 0, 0)
	spawnMobile("talus", "sentry_specforce", 300, 2397.5, 124.6, -4994.7, 178, 0)
	spawnMobile("talus", "sentry_specforce", 300, 2394.6, 124.8, -4994.8, 179, 0)

end
