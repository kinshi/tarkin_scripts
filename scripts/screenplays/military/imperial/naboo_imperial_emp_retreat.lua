NabooImperialEmpRetreatScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "NabooImperialEmpRetreatScreenPlay",
}

registerScreenPlay("NabooImperialEmpRetreatScreenPlay", true)

function NabooImperialEmpRetreatScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
--		self:initializeLootContainers()  --Why is this here, this place has no loot boxes???
	end
end

function NabooImperialEmpRetreatScreenPlay:spawnSceneObjects()

  -- Terminals

	spawnSceneObject("naboo", "object/tangible/terminal/terminal_character_builder.iff", 2440.9, 292.0, -3890.5, 0, 0, 0, 1, 0)
	spawnSceneObject("naboo", "object/tangible/terminal/terminal_mission_imperial.iff", 2431.1, 292.0, -3911.5, 0, 0, 0, 1, 0)

end

function NabooImperialEmpRetreatScreenPlay:spawnMobiles()

	--
	spawnMobile("naboo", "sentry_stormtrooper", 360, 2438.1, 292.0, -3909.5, 169, 0)
	spawnMobile("naboo", "sentry_stormtrooper", 360, 2447.1, 292.0, -3907.8, 169, 0)
	--
	spawnMobile("naboo", "sentry_stormtrooper_rifleman", 360, 2428.2, 292.0, -3929.3, 77, 0)
	spawnMobile("naboo", "sentry_stormtrooper_sniper", 360, 2431.3, 292.0, -3944.4, 81, 0)
	spawnMobile("naboo", "sentry_imperial_major", 360, 2422.8, 292.0, -3954.6, 171, 0)
	--
	spawnMobile("naboo", "sentry_stormtrooper_combat_medic", 360, 2412.2, 292.0, -3941.2, 77, 0)
	spawnMobile("naboo", "sentry_stormtrooper_bombardier", 360, 2418.7, 292.0, -3911.8, -161, 0)
	--
	spawnMobile("naboo", "sentry_stormtrooper_bombardier", 360, 2447.4, 292.0, -3900.9, -110, 0)
	spawnMobile("naboo", "sentry_stormtrooper_bombardier", 360, 2437.4, 292.0, -3904.9, 70, 0)
	
end
