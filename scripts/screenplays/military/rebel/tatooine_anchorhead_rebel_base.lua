AnchorheadRebelBaseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "AnchorheadRebelBaseScreenPlay"
}

registerScreenPlay("AnchorheadRebelBaseScreenPlay", true)

function AnchorheadRebelBaseScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function AnchorheadRebelBaseScreenPlay:spawnMobiles()
	
	-- Gate Locations
	
	spawnMobile("tatooine", "sentry_specforce", 360, 125.7, 52.0, -5369.3, 110, 0)
	spawnMobile("tatooine", "sentry_specforce_sniper", 360, 119.4, 52.0, -5340.9, 60, 0)
	spawnMobile("tatooine", "sentry_specforce_combat_medic", 360, 122.4, 52.0, -5330.6, -154, 0)
	spawnMobile("tatooine", "sentry_specforce_squad_leader", 360, 149.4, 52.0, -5325.5, 29, 0)
	spawnMobiel("tatooine", "sentry_specforce", 360, 32.2, 51.7, -5347.6, -88, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 32,4, 51.9, -5340.3, -88, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 132.8, 52.0, -5375.0, 0, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 132.8. 52.0, -5368.8, 180, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 136.0, 52.0, -5369.6, 90, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 148.3, 52.0, -5319.3, 76, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 158.0, 52.0, -5328.8, -40, 0)
	spawnMobile("tatooine", "specforce_heavy_weapons_specialist", 360, 34.2, 51.2, -5351.3, -30, 0)
	spawnMobile("tatooine", "specforce_heavy_weapons_specialist", 360, 36.6, 52.0, -5337.6, -155, 0)

	-- Shuttleport

	spawnMobile("tatooine", "specforce_marine", 360, 64.1, 52.0, -5308.4, 140, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 59.7, 52.6, -5305.4, 0, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 33.5, 52.6, -5305.3, 0, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 30.2, 52.2, -5307.6, -90, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 30.1, 52.1, -5382.2, -90, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 31.5, 52.3, -5334.2, -90, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 61.0, 52.3, -5334.6, 140, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 54.4, 52.0, -5346.8, -26, 0)

	-- Other outside points

	spawnMobile("tatooine", "specforce_marine", 360, 108.6, 52.0, -5306.1, 0, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 112.0, 52.0, -5306.1, 0, 0)
	spawnMobile("tatooine", "specforce_heavy_weapons_specialist", 360, 108.6, 52.0, -5313.9, 0, 0)
	spawnMobile("tatooine", "specforce_master_sergeant", 360, 112.0, 52.0, -5313.9, 0, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 114.2, 52.0, -5321.8, -90, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 103.4, 52.0, -5322.2, 90, 0)
	spawnMobile("tatooine", "specforce_heavy_weapons_specialist", 360, 81.9, 52.0, -5401.4, -130, 0)
	spawnMobile("tatooine", "specforce_heavy_weapons_specialist", 360, 128.7, 52.0, -5433.4, 148, 0)
	spawnMobile("tatooine", "specforce_major", 360, 132.8, 52.0, -5404.3, 82, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 131.2, 52.0, -5400.2, 145, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 132.8, 52.0, -5407.7, 0, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 103.5, 52.0, -5327.8, 16, 0)
	spawnMobile("tatooine", "sentry_specforce", 360, 152.7, 52.0, -5325.5, 29, 0)

	-- Cloning Center

	spawnMobile("tatooine", "specforce_marine", 360, 71.6, 52.0, -5360.7, 90, 0)
	spawnMobile("tatooine", "sepcforce_marine", 360, 71.8, 52.0, -5356.6, 90, 0)

	-- Rebel Recruiter

	spawnMobile("tatooine", "specforce_marine", 360, 119.9, 52.0, -5362.1, -90, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 123.2, 53.0, -5366.6, -90, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 70.7, 52.0, -5351.6, 45, 0)
	spawnMobile("tatooine", "specforce_marine", 360, 65.5, 52.0, -5349.7, 0, 0)

	-- Where the Zephy load in point should be (where players arrive when they travel into the base)

	-- Where the travel terminal should be

end
