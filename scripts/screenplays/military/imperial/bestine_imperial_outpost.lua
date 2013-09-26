BestineImperialOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "BestineImperialOutpostScreenPlay"
}

registerScreenPlay("BestineImperialOutpostScreenPlay", true)

function BestineImperialOutpostScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function BestineImperialOutpostScreenPlay:spawnMobiles()
	
	--Outside wall perimeter

	

	--Inside walls

	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1134.9, 98.0, -3889.1, 1, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_rifleman", 450, -1139.4, 98.0, -3889.2, -1, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_sniper", 450, -1126.9, 98.0, -3894.6, -43, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_squad_leader", 450, -1133.3, 98.0, -3898.6, 0, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1131.9, 98.0, -3898.4, -20, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1137.3, 98.0, -3897.5, 0, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_combat_medic", 450, -1136.1, 98.0, -3898.2, 0, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1146.9, 98.0, -3906.9, -178, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1141.5, 98.0, -3910.2, -137, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1142.1, 98.0, -3903.2, 18, 0)
--	spawnMobile("tatooine", "sentry_stormtrooper_captain", 450, -1134.7, 98.0, -3902.0, -12, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_sniper", 450, -1149.2, 98.0, -3904.0, 42, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_rifleman", 450, -1149.4, 98.0, -3898.9, 147, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_combat_medic", 450, -1148.6, 98.0, -3910.0, -170, 0)
	spawnMobile("tatooine", "sentry_stormtrooper_bombardier", 450, -1146.3, 98.0, -3911.3, -153, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1144.4, 98.0, -3919.8, 155, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1146.0, 98.0, -3919.0, -138, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1149.4, 98.0, -3916.5, -178, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1153.5, 98.0, -3912.2, 153, 0)
	spawnMobile("tatooine", "sentry_stormtrooper", 450, -1154.0, 98.0, -3918.1, 179, 0)

	-- Where the Zephy load in point should be (where players arrive when they travel into the base)

	-- Where the travel terminal should be

end
