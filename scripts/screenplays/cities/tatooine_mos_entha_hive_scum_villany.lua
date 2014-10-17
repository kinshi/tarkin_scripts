TatooineMosEnthaHiveScumVillanyScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TatooineMosEnthaHiveScumVillanyScreenPlay"
}

registerScreenPlay("TatooineMosEnthaHiveScumVillanyScreenPlay", true)

function TatooineMosEnthaHiveScumVillanyScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function TatooineMosEnthaHiveScumVillanyScreenPlay:spawnSceneObjects()

	-- Mos Entha Crashed Ship Ojbects (Outside)
	spawnSceneObject("tatooine", "object/tangible/camp/campfire_logs_smoldering.iff", 1754.0, 7.0, 3146.5, 0, 0, 0, 1, 0)

end

function TatooineMosEnthaHiveScumVillanyScreenPlay:spawnMobiles()

	-- Mos Entha Starport
	spawnMobile("tatooine", "stormtrooper", 300, 1292.0, 7.0, 3127.4, 11, 0)
	spawnMobile("tatooine", "stormtrooper", 300, 1280.1, 7.0, 3135.9, 35, 0)

	-- Mos Entha Shuttle A
	spawnMobile("tatooine", "stormtrooper", 300, 1717.4, 7.6, 3189.6, -178, 0)
	spawnMobile("tatooine", "stormtrooper", 300, 1729.6, 7.0, 3177.7, 1, 0)
	spawnMobile("tatooine", "jabba_scout", 300, 1754.8, 7.0, 3147.4, -137, 0)
	spawnMobile("tatooine", "jabba_thief", 300, 1754.6, 7.0, 3145.3, -30, 0)
	spawnMobile("tatooine", "jabba_swooper", 300, 1753.2, 7.0, 3147.6, 146, 0)
	spawnMobile("tatooine", "jabba_henchman", 300, 1753.0, 7.0, 3145.6, 43, 0)

	-- Mos Entha Shuttle B
	spawnMobile("tatooine", "stormtrooper", 300, 1381.0, 7.6, 3472.2, -178, 0)

	-- Valarian Gatherings
	spawnMobile("tatooine", "valarian_henchman", 300, 1709.6, 7.0, 3075.3, 124, 0)
	spawnMobile("tatooine", "valarian_scout", 300, 1714.8, 7.0, 3074.1, -60, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 1712.4, 7.0, 3071.0, -53, 0)
	spawnMobile("tatooine", "valarian_thug", 300, 1724.6, 10.9, 3059.7, 99, 0)
	spawnMobile("tatooine", "valarian_scout", 300, 1729.3, 16.0, 3042.9, 138, 0)
	spawnMobile("tatooine", "valarian_enforcer", 300, 1728.9, 16.0, 3045.4, -16, 0)
	spawnMobile("tatooine", "valarian_enforcer", 300, 1725.4, 16.0, 3044.7, -16, 0)
	spawnMobile("tatooine", "valarian_assassin", 300, 1723.0, 16.0, 3036.7, -76, 0)
	spawnMobile("tatooine", "valarian_thug", 300, 1718.6, 16.0, 3037.6, 45, 0)
	spawnMobile("tatooine", "valarian_thief", 300, 1717.4, 16.0, 3042.0, 79, 0)
	spawnMobile("tatooine", "valarian_scout", 300, 1720.3, 16.0, 3043.7, 74, 0)

	-- Hutt Gatherings
	spawnMobile("tatooine", "jabba_henchman", 300, 1392,9, 7.5, 3219.8, -25, 0)
	spawnMobile("tatooine", "jabba_scout", 300, 1386.2, 7.5, 4329.7, 33, 0)
	spawnMobile("tattoine", "jabba_swooper", 300, 1388.7, 7.5, 3231.4, -16, 0)
	spawnMobile("tatooine", "jabba_thief", 300, 1389,8, 7.0, 3239.4, 178, 0)
	spawnMobile("tatooine", "jabba_scout", 300, 1393.6, 7.5, 3233.6, 0, 0)
	spawnMobile("tatooine", "jabba_henchman", 300, 1221.9, 1.5, 3262.2, -128, 0)
	spawnMobile("tatooine", "jabba_assassin", 300, 1218.9, 1.5, 3261.6, 100, 0)
	spawnMobile("tatooine", "jabba_thief", 300, 1219.8, 1.5, 3259.8, 20, 0)
	

	-- Bounty Hunters
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1766.1, 7.0, 3153.6, -27, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1763.1, 7.0, 3156.2, -27, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1395.9, 7.0, 3241.4, 0, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1389.4, 7.0, 3241.2, 0, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1383.1, 7.0, 3241.6, 0, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1370.0, 11.0, 3191.6, 78, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1368.8, 11.0, 3220,7, 148, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1370.4, 11.0, 3156.1, 109, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1390.6, 13.0, 3138.7, 0, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1407.0, 11.0, 3156.0, -31, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1406.1, 11.0, 3185.4, -148, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1406.2, 11.0, 3213.1, -81, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1322.9, 7.0, 3180.6, -130, 0)
	spawnMobile("tatooine", "mando_bounty_hunter", 300, 1322.3, 7.0, 3176.1, -166, 0)

	-- Encroaching Rebel Squads
	spawnMobile("tatooine", "rebel_colonel", 300, 1432.4, 7.0, 3466.4, 20, 0)
	spawnMobile("tatooine", "rebel_commando", 300, 1435.0, 7.0, 3471.0, -149, 0)
	spawnMobile("tatooine", "rebel_commando", 300, 1435.0, 7.0, 3473.7, -149, 0)
	spawnMobile("tatooine", "rebel_commando", 300, 1432.8, 7.0, 3469.7, -149, 0)
	spawnMobile("tatooine", "rebel_commando", 300, 1435.1, 7.0, 3468.2, -147, 0)
	spawnMobile("tatooine", "rebel_commando", 300, 1437.3, 7.0, 3471.8, -147, 0)
	spawnMobile("tatooine", "rebel_first_lieutenant", 300, 1421.6, 7.0, 3487.6, 178, 0)
	spawnMobile("tatooine", "rebel_crewman", 300, 1424.4, 6.0, 3477.6, 85, 0)
	spawnMobile("tatooine", "rebel_pilot", 300, 1420.6, 7.0, 3486.1, 37, 0)
	spawnMobile("tatooine", "rebel_medic", 300, 1425.2, 7.0, 3476.6, 47, 0)
	spawnMobile("tatooine", "rebel_network_leader", 300, 1422.5, 7.0, 3486.0, -31, 0)

end
