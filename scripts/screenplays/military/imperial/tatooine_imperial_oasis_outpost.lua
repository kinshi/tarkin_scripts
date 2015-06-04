TatooineImperialOasisScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "TatooineImperialOasisScreenPlay"
}

registerScreenPlay("TatooineImperialOasisScreenPlay", true)

function TatooineImperialOasisScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

function TatooineImperialOasisScreenPlay:spawnSceneObjects()

	-- BLUEFROG
	spawnSceneObject("tatooine", "object/tangible/terminal/terminal_character_builder.iff", -5310, 8.5, 2661, 0, 0, 0, 0, 0)

	--Shuttle
	--No need for a shuttle, the existing NPC starport serves as an adequate prop 
	--Players get here via F.A.R.T travel terminal at Moenia starport (Moenia is a Rebel stronghold)
	
end

function TatooineImperialOasisScreenPlay:spawnMobiles()
	
	-- Lambda Shuttle Landing and Perimeter Area

	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5365.9, 6.0, 2740.9, -106, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5357.1, 5.3, 2744.7, 62, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5354.0, 5.3, 2748.0, -170, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5360.1, 8.0, 2748.7, 133, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5357.5, 8.0, 2751.5, 133, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5373.4, 8.0, 2755.7, 138, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5371.1, 8.0, 2755.7, -43, 0)
	spawnMobile("tatooine", "sentry_imperial_major", 360, -5352.1, 5.4, 2742.9, 38, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_combat_medic", 360, -5350.8, 5.4, 2744.6, -140, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5347.8, 5.2, 2741.8, -141, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5349.2, 5.2, 2740.1, 38, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5343.1, 4.6, 2733.7, 40, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5340.2, 4.7, 2737.2, -141, 0)

	-- Outside Base Walls

	spawnMobile("tatooine", "sentry_stormtrooper_sniper", 360, -5346.8, 5.9, 2729.7, -138, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_sniper", 360, -5336.3, 5.8, 2740.2, -14, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_combat_medic", 360, -5337.9, 4.8, 2726.4, -26, 0)

	-- Base Gate Entry Points

	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5333.4, 6.1, 2727.6, -49, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5339.2, 5.5, 2722.3, -40, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5302.3, 7.5, 2628.4, -93, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5301.9, 7.7, 2677.6, -96, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5289.5, 8.3, 2693.0, 40, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5285.5, 8.7, 2689.9, 35, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5290.4, 8.4, 2691.2, -167, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5386.8, 8.7, 2688.3, -138, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5300.3, 7.7, 2682.7, 84, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5300.1, 7.9, 2677.7, 84, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5361.7, 7.7, 2674.1, -93, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5361.1, 8.5, 2660.5, -93, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5350.6, 7.3, 2662.2, -91, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5351.3, 8.3, 2673.2, -94, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_sniper", 360, -5344.0, 6.6, 2662.6, -93, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_sniper", 360, -5341.5, 7.7, 2673.2, -94, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_sniper", 360, -5345.9, 8.1, 2673.8, -110, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_sniper", 360, -5345.9, 7.0, 2661.8, -76, 0)

	-- Inside Base, Courtyard

	spawnMobile("tatooine", "sentry_stormtrooper_bombardier", 360, -5333.3, 6.6, 2708.1, 43, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_bombardier", 360, -5339.1, 6.2, 2713.1, 43, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_squad_leader", 360, 5341.7, 6.2, 2710.4, 43, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_combat_medic", 360, 5338.6, 6.5, 2707.1, 43, 0)
--	spawnMobile("tatooine", "sentry_stormtrooper_captain", 360, 5339.1, 6.3, 2709.1, 43, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5320.4, 6.5, 2735.2, -148, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5321.4, 6.6, 2733.6, 18, 0)

	-- Cloning Center

	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5309.4, 8.5, 2661.1, -5, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 360, -5305.3, 8.5, 2661.1, 0, 0)

	-- Lake/Oasis Patrol Group
		-- where 2 patrol groups will be placed when AI becomes active, they will walk the perimeter
		-- of the lake/oasis each group going in a different direction around the lake.

	-- Where the Zephyr load in point should be (where players arrive when they travel into the base)

	-- Where the travel terminal should be

end

