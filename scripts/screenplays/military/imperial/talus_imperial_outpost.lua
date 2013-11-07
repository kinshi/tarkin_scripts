TalusImperialOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("TalusImperialOutpostScreenPlay", true)

function TalusImperialOutpostScreenPlay:start()
	if (isZoneEnabled("talus")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

function TalusImperialOutpostScreenPlay:spawnSceneObjects()

	-- Travel terminal

	local pCollector = spawnSceneObject("talus", "object/tangible/furniture/imperial/data_terminal_s1.iff", -2212, 20, 2318, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to  Imperial Stronghold - (Corellia)")
	createObserver(OBJECTRADIALUSED, "TalusImperialOutpostScreenPlay", "teleportStronghold", pCollector)
				
	-- Terminals

	spawnSceneObject("talus", "object/tangible/terminal/terminal_character_builder.iff", -2190, 20, 2274, 0, 0, 0, 0, 0)


end

function TalusImperialOutpostScreenPlay:spawnMobiles()

	spawnMobile("talus", "at_st", 300, -2167.8, 20.0, 2411.1, -8, 0)
	spawnMobile("talus", "stormtrooper", 300, -2194.6, 20.0, 2344.9, 179, 0)
	spawnMobile("talus", "stormtrooper", 300, -2187.9, 20.0, 2344.9, 179, 0)
	spawnMobile("talus", "stormtrooper", 300, -2178.9, 20.0, 2344.9, 179, 0)
	spawnMobile("talus", "stormtrooper", 300, -2172.1, 20.0, 2344.9, 179, 0)
	spawnMobile("talus", "stormtrooper", 300, -2170.5, 20.0, 2331.4, -90, 0)
	spawnMobile("talus", "stormtrooper", 300, -2170.5, 20.0, 2324.4, -90, 0)
	spawnMobile("talus", "stormtrooper", 300, -2170.5, 20.0, 2314.3, -90, 0)
	spawnMobile("talus", "stormtrooper", 300, -2170.5, 20.0, 2307.7, -90, 0)
	spawnMobile("talus", "stormtrooper", 300, -2170.5, 20.0, 2297.5, -90, 0)
	spawnMobile("talus", "stormtrooper", 300, -2170.5, 20.0, 2290.6, -90, 0)
	spawnMobile("talus", "stormtrooper", 300, -2170.5, 20.0, 2280.4, -90, 0)
	spawnMobile("talus", "stormtrooper", 300, -2170.5, 20.0, 2273.6, -90, 0)
	spawnMobile("talus", "stormtrooper", 300, -2180.1, 20.0, 2272.0, 1, 0)
	spawnMobile("talus", "stormtrooper", 300, -2195.5, 20.0, 2248.0, 120, 0)
	spawnMobile("talus", "stormtrooper", 300, -2197.5, 20.0, 2249.0, 120, 0)
	spawnMobile("talus", "stormtrooper", 300, -2199.5, 20.0, 2250.0, 120, 0)
	spawnMobile("talus", "stormtrooper", 300, -2196.5, 20.0, 2246.0, 120, 0)
	spawnMobile("talus", "stormtrooper", 300, -2198.5, 20.0, 2247.0, 120, 0)
	spawnMobile("talus", "stormtrooper", 300, -2200.5, 20.0, 2248.0, 120, 0)
	spawnMobile("talus", "stormtrooper_squad_leader", 300, -2193.4, 20.0, 2245.4, 120, 0)
	spawnMobile("talus", "stormtrooper_rifleman", 300, -2206.0, 20.0, 2282.0, -70, 0)
	spawnMobile("talus", "stormtrooper_rifleman", 300, -2205.0, 20.0, 2320.1, -127, 0)
	spawnMobile("talus", "imperial_private", 300, -2219.4, 20.0, 2299.2, -24, 0)
	spawnMobile("talus", "stormtrooper_sniper", 300, -2193.5, 20.0, 2267.2, -15, 0)
	spawnMobile("talus", "at_st", 300, -2198.2, 20.0, 2299.8, 0, 0)
	spawnMobile("talus", "stormtrooper_bombardier", 300, -2195.2, 20.0, 2295.2, 0, 0)
	spawnMobile("talus", "stormtrooper_bombardier", 300, -2201.2, 20.0, 2295.2, 0, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2185.7, 20.0, 2272.4, -1, 0)

	-- Gate Entrance Guards

	spawnMobile("talus", "sentry_stormtrooper", 300, -2175.1, 20.0, 2400.4, 0, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2191.6, 20.0, 2400.8, 0, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2276.6, 20.0, 2258.4, -121, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2267.0, 20.0, 2243.8, -121, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2099.2, 20.0, 2244.3, 121, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2089.0, 20.0, 2258.4, 123, 0)
	spawnMobile("talus", "at_st", 300, -2200.1, 20.0, 2408.8, 0, 0)
	spawnMobile("talus", "at_st", 300, -2286.0, 20.0, 2264.2, -134, 0)
	spawnMobile("talus", "at_st", 300, -2271.9, 20.0, 2230.3, -108, 0)
	spawnMobile("talus", "at_st", 300, -2092.5, 20.0, 2230.5, 107, 0)
	spawnMobile("talus", "at_st", 300, -2073.6, 20.0, 2260.2, 131, 0)

	-- Tower Door Entrance Guards

	spawnMobile("talus", "sentry_stormtrooper", 300, -2129.0, 20.0, 2220.7, 17, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2133.3, 20.0, 2221.8, 18, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2085.7, 20.0, 2304.9, -45, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2882.8, 20.0, 2307.8, -45, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2135.7, 20.0, 2325.8, -120, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2137.9, 20.0, 2329.2, -122, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2138.9, 20.0, 2385.3, -107, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2140.1, 20.0, 2389.7, -108, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2232.5, 20.0, 2382.3, -163, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2236.8, 20.0, 2383.6, -160, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2227.3, 20.0, 2329.9, 117, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2229.2, 20.0, 2326.6, 121, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2278.8, 20.0, 2299.1, 135, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2281.9, 20.0, 2296.0, 135, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2226.8, 20.0, 2218.4, 72, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2225.5, 20.0, 2214.0, 72, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2185.2, 20.0, 2251.6, -4, 0)
	spawnMobile("talus", "sentry_stormtrooper", 300, -2181.2, 20.0, 2251.8, -2, 0)

	-- Harvesters and Power Plants

	spawnMobile("talus", "farmer", 300, -2229.2, 20.0, 2265.0, -151, 0)
	spawnMobile("talus", "farmer_rancher", 300, -2238.8, 20.0, 2274.2, -89, 0)
	spawnMobile("talus", "scientist", 300, -2143.8, 20.0, 2215.9, 110, 0)
	spawnMobile("talus", "scientist", 300, -2084.8, 20.0, 2293.3, 42, 0)
	spawnMobile("talus", "scientist", 300, -2121.2, 20.0, 2269.5, -3, 0)
	spawnMobile("talus", "scientist", 300, -2134.1, 20.0, 2269.5,  1, 0)
	spawnMobile("talus", "scientist", 300, -2128.3, 20.0, 2380.5, -19, 0)
	spawnMobile("talus", "farmers_wife", 300, -2182.7, 20.0, 2364.8, -91, 0)
	spawnMobile("talus", "farmers_child", 300, -2184.8, 20.0, 2364.7, 87, 0)
	spawnMobile("talus", "scientist", 300, -2222.3, 20.0, 2388.4, -76, 0)
	spawnMobile("talus", "scientist", 300, -2279.6, 20.0, 2310.7, -137, 0)
	spawnMobile("talus", "farmers_child", 300, -2239.5, 20.0, 2270.2, -124, 0)
	spawnMobile("talus", "farmers_child", 300, -2243.1, 20.0, 2270.5, 144, 0)
	spawnMobile("talus", "farmers_child", 300, -2241.3, 20.0, 2266.9, -16, 0)
	spawnMobile("talus", "scientist", 300, -2237.3, 20.0, 2223.0, 162, 0)

end

function TalusImperialOutpostScreenPlay:teleportStronghold(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("corellia", 4630, 0, -5784, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end
