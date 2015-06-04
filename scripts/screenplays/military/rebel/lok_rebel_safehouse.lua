LokRebelSafehouseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "LokRebelSafehouseScreenPlay"
}

registerScreenPlay("LokRebelSafehouseScreenPlay", true)

function LokRebelSafehouseScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

function LokRebelSafehouseScreenPlay:spawnSceneObjects()

	-- Terminals
	
	spawnSceneObject("lok", "object/tangible/terminal/terminal_character_builder.iff", -4747.8, 4.0, 3522.8, 0, 1, 0, 0, 0)
	spawnSceneObject("lok", "object/tangible/terminal/terminal_mission_rebel.iff", -4768, 4.0, 3505, 0, 1, 0, 0, 0)
	

	--Shuttle
	--No need for a shuttle prop, the existing static shuttle serves
	--Rebel Players reach the safehouse from AH on Tat
	
	-- No need for recruiter, the Major serves as one
	
	-- Shuttle Sentries
	
	spawnMobile("lok", "sentry_specforce", 300, -4762.7, 4.0, 3515.9, 135, 0)
	spawnMobile("lok", "sentry_specforce", 300, -4767.9, 4.0, 3511.1, 135, 0)

	-- Gate / Entrance Sentries

	spawnMobile("lok", "sentry_specforce", 300, -4751.4, 4.0, 3503.8, 123, 0)
	spawnMobile("lok", "rebel_engineer", 300, -4750.6, 4.0, 3507.4, 112, 0)
	spawnMobile("lok", "sentry_specforce", 300, -4738.4, 4.0, 3509.3, 136, 0)
	spawnMobile("lok", "sentry_specforce", 300, -4732.6, 4.0, 3518.5, 156, 0)
	spawnMobile("lok", "rebel_scout", 300, -4741.2, 4.0, 3549.3, -136, 0)
	spawnMobile("lok", "sentry_specforce", 300, -4743.4, 4.0, 3533.9, 135, 0)
	spawnMobile("lok", "sentry_specforce", 300, -4747.2, 4.0, 3528.8, 90, 0)
	spawnMobile("lok", "gcw_rebel_defence_droid", 300, -4749.1, 4.0, 3511.8, 116, 0)
	spawnMobile("lok", "gcw_rebel_defence_droid", 300, -4739.7, 4.0, 3519.9, 130, 0)

	-- Bridge Sentries

	spawnMobile("lok", "sentry_specforce", 300, -4711.8, 2.0, 3484.1, 137, 0)
	spawnMobile("lok", "sentry_specforce", 300, -4715.1, 1.9, 3480.8, 137, 0)

end

function LokRebelSafehouseScreenPlay:spawnMobiles()
	
	spawnMobile("lok", "rebel_major", 300, -4750, 4, 3520, -130, 0)

end
