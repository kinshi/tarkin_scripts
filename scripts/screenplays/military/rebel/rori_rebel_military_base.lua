RoriRebelMilitaryBaseScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "RoriRebelMilitaryBaseScreenPlay",
}

registerScreenPlay("RoriRebelMilitaryBaseScreenPlay", true)

function RoriRebelMilitaryBaseScreenPlay:start()
	if (isZoneEnabled("rori")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
--		self:initializeLootContainers()  --Why is this here, this place has no loot boxes???
	end
end

function RoriRebelMilitaryBaseScreenPlay:spawnSceneObjects()

	-- Travel terminal

	local pCollector = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", -5311, 76, 5004, 0, 1, 0, 0, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Rebel Outpost (Rori)")
	createObserver(OBJECTRADIALUSED, "RoriRebelMilitaryBaseScreenPlay", "teleportRebelOutpost", pCollector)
			
	-- Terminals

	spawnSceneObject("rori", "object/tangible/terminal/terminal_character_builder.iff", -5360.8, 76.0, 5046.0, 0, 1, 0, 0, 0)
	spawnSceneObject("rori", "object/tangible/terminal/terminal_mission_rebel.iff", -5364.0, 76.0, 5047.0, 0, 1, 0, 0, 0)

	--Shuttle

	spawnSceneObject("rori", "object/tangible/event_perk/lambda_shuttle.iff", -5311, 75, 4991, 0, 0, 0, 1, 0)

end

function RoriRebelMilitaryBaseScreenPlay:spawnMobiles()

	-- Outside spot 1

	spawnMobile("rori", "specforce_wilderness_operative", 360, -5307.530, 75.894, 5009.310, 82.711, 0)
	spawnMobile("rori", "specforce_wilderness_operative", 360, -5311.120, 76.009, 5012.210, 176.000, 0)
	spawnMobile("rori", "specforce_lieutenant", 360, -5313.580, 76.062, 5007.680, 80.422, 0)

	-- Right tent

	spawnMobile("rori", "specforce_marine", 360, -5316.700, 76.001, 5070.840, 39.227, 0)
	spawnMobile("rori", "specforce_technician", 360, -5318.290, 76.012, 5075.460, -177.504, 0)
	spawnMobile("rori", "specforce_marine", 360, -5319.400, 76.000, 5070.660, 0.794, 0)

	-- Green factory

	spawnMobile("rori", "specforce_technician", 360, -5341.730, 76.000, 5087.920, 11.237, 0)
	spawnMobile("rori", "specforce_technician", 360, -5339.400, 76.000, 5087.770, 83.172, 0)

	-- Right tower

	spawnMobile("rori", "specforce_marine", 360, -5334.020, 80.010, 5067.550, 135.727, 0)
	spawnMobile("rori", "specforce_technician", 360, -5334.660, 80.010, 5068.880, 34.843, 0)

	-- Central lawn

	spawnMobile("rori", "specforce_interrogator", 360, -5362.500, 76.000, 5067.360, -161.201, 0)
	spawnMobile("rori", "specforce_major", 360, -5367.130, 76.000, 5066.420, 114.595, 0)
	spawnMobile("rori", "specforce_marine", 360, -5368.140, 76.000, 5061.860, 135.653, 0)
	spawnMobile("rori", "specforce_marine", 360, -5362.830, 76.000, 5061.750, 34.561, 0)

	spawnMobile("rori", "specforce_marine", 300, math.random(12) + -5334, 76, math.random(12) + 5035, math.random(360), 0)
	spawnMobile("rori", "specforce_marine", 300, math.random(12) + -5334, 76, math.random(12) + 5035, math.random(360), 0)
	spawnMobile("rori", "specforce_technician", 300, math.random(12) + -5334, 76, math.random(12) + 5035, math.random(360), 0)
	spawnMobile("rori", "specforce_marine", 300, math.random(12) + -5334, 76, math.random(12) + 5035, math.random(360), 0)

	spawnMobile("rori", "specforce_marine", 300, math.random(12) + -5357, 76, math.random(12) + 5008, math.random(360), 0)
	spawnMobile("rori", "specforce_technician", 300, math.random(12) + -5357, 76, math.random(12) + 5008, math.random(360), 0)
	spawnMobile("rori", "specforce_lieutenant", 300, math.random(12) + -5357, 76, math.random(12) + 5008, math.random(360), 0)
	spawnMobile("rori", "specforce_marine", 300, math.random(12) + -5357, 76, math.random(12) + 5008, math.random(360), 0)

	-- Left supplies

	spawnMobile("rori", "specforce_procurement_specialist", 360, -5393.190, 76.000, 5062.330, 50.886, 0)
	spawnMobile("rori", "specforce_procurement_specialist", 360, -5397.430, 76.000, 5065.170, 71.564, 0)

	-- Left tower

	spawnMobile("rori", "specforce_technician", 360, -5374.270, 80.010, 5034.760, 54.368, 0)
	spawnMobile("rori", "specforce_marine", 360, -5376.280, 80.010, 5037.600, 35.632, 0)

	-- Left tent with food table

	spawnMobile("rori", "specforce_interrogator", 360, -5349.220, 76.000, 4995.770, -156.473, 0)
	spawnMobile("rori", "specforce_marine", 360, -5352.580, 76.000, 4995.850, 149.354, 0)

	-- Ion-fusion generator

	spawnMobile("rori", "specforce_technician", 360, -5363.020, 76.000, 4999.490, 71.912, 0)

	-- Central tower

	spawnMobile("rori", "specforce_marine", 360, -5330.110, 83.010, 5012.140, -173.436, 0)
	spawnMobile("rori", "specforce_technician", 360, -5323.650, 83.010, 5013.930, 90.476, 0)
	spawnMobile("rori", "specforce_marine", 360, -5324.660, 83.010, 5021.500, 11.254, 0)
	spawnMobile("rori", "rebel_specforce_captain", 360, -5327.590, 83.010, 5015.240, 127.087, 0)

	-- Right building

	spawnMobile("rori", "specforce_technician", 360, -3.753, 0.125, -1.790, 91.608, 7555645)
	spawnMobile("rori", "specforce_marine", 360, 0.208, 0.125, -5.539, 15.788, 7555642)
	spawnMobile("rori", "rebel_specforce_sergeant", 360, 4.173, 0.125, -3.947, 87.468, 7555644)
	spawnMobile("rori", "specforce_marine", 360, 3.233, 0.125, -2.203, 0.162, 7555644)

	-- Left building

	spawnMobile("rori", "specforce_marine", 360, 0.616, 0.125, -5.619, 127.514, 7555635)
	spawnMobile("rori", "specforce_technician", 360, 3.865, 0.125, -4.194, 89.946, 7555637)
	spawnMobile("rori", "rebel_specforce_colonel", 360, 3.633, 0.125, -2.190, 137.113, 7555637);
	spawnMobile("rori", "specforce_interrogator", 360, 3.252, 0.125, 3.604, -91.859, 7555636)

	-- Outside spot 2

	spawnMobile("rori", "specforce_marine", 360, -5337.310, 75.920, 4982.150, 109.938, 0)
	spawnMobile("rori", "specforce_marine", 360, -5331.610, 76.156, 4982.920, -121.976, 0)

	-- Outside viewpoint hill

	spawnMobile("rori", "specforce_wilderness_operative", 360, -5249.920, 89.554, 4968.660, 137.738, 0)
	spawnMobile("rori", "specforce_wilderness_operative", 360, -5253.200, 89.623, 4966.770, -168.074, 0)

	-- Gate Entrances

	spawnMobile("rori", "sentry_specforce", 300, -5328.4, 76.0, 5007.0, -175, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5335.3, 76.0, 4998.3, 155, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5318.8, 76.0, 5016.2, 93, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5307.6, 76.0, 5020.3, 124, 0)
	spawnMobile("rori", "gcw_rebel_defence_droid", 300, -5325.9, 76.0, 4995.6, 168, 0)
	spawnMobile("rori", "gcw_rebel_defence_droid", 300, -5300.4, 75.9, 5011.6, 76, 0)

	-- Building Sentries
	
	spawnMobile("rori", "sentry_specforce", 300, -5307.3, 75.9, 4984.4, -174, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5314.9, 75.9, 4983.9, 169, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5363.6, 76.0, 5077.4, 140, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5366.8, 76.0, 5074.6, 139, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5377.7, 76.0, 5064.9, 139, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5380.9, 76.0, 5062.1, 138, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5365.7, 76.0, 5048.3, 25, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5351.6, 76.0, 5052.7, -108, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5359.0, 76.0, 5044.5, 26, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5340.3, 76.0, 5029.4, -40, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5338.0, 76.0, 5030.5, -40, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5326.5, 76.0, 5024.8, -65, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5331.3, 76.0, 5025.3, -56, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5385.3, 76.0, 5025.3, -124, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5386.9, 76.0, 5027.7, -124, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5329.6, 76.0, 5078.0, 42, 0)
	spawnMobile("rori", "sentry_specforce", 300, -5331.8, 76.0, 5079.9, 41, 0)

	-- Turret Interiors

	spawnMobile("rori", "sentry_specforce_sniper", 300, -5335.0, 80.0, 5065.0, 152, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 300, -5342.1, 80.0, 5068.7, -141, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 300, -5340.9, 80.0, 5070.5, -48, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 300, -5374.9, 80.0, 5031.8, 126, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 300, -5372.6, 80.0, 5033.8, 54, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 300, -5376.5, 80.0, 5039.5, 25, 0)
	spawnMobile("rori", "sentry_specforce_sniper", 300, -5378.5, 80.0, 5039.0, -36, 0)

end

-- Zephyr Travel Destinations

-- Starbird base (Rori) travel function
	
function RoriRebelMilitaryBaseScreenPlay:teleportRebelOutpost(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isRebel() == true) then	
		local player = LuaSceneObject(pPlayer)
		player:switchZone("rori", 3691, 0, -6403, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end
