LordNyaxCultScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "LordNyaxCultScreenPlay",
	
	lootContainers = {
		6036023,
		6036026,
		6036035
	},
	
	lootLevel = 100,	

	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 1000000},
				{group = "holocron_light", chance = 1000000},
				{group = "holocron_splinters", chance = 1000000},
				{group = "deed_voucher", chance = 1500000},
				{group = "nyax", chance = 1500000},
				{group = "nge_house_bespin", chance = 1000000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "armor_attachments", chance = 1500000}
			},
			lootChance = 10000000
		}					
	},
	
	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("LordNyaxCultScreenPlay", true)

function LordNyaxCultScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function LordNyaxCultScreenPlay:spawnMobiles()
	--Outside
	spawnMobile("corellia", "fanatic_of_lord_nyax", 900, 1353.6, 31, -320.4, 9, 0)
	spawnMobile("corellia", "visionary_of_lord_nyax", 900, 1359, 31, -317.6, -71, 0)
	spawnMobile("corellia", "zealot_of_lord_nyax", 900, 1356.6, 31, -319.5, -36, 0)
	spawnMobile("corellia", "fiend_of_lord_nyax", 900, 1381.1, 31, -334.4, -157, 0)
	spawnMobile("corellia", "disciple_of_lord_nyax", 900, 1380.3, 31, -336.9, 19, 0)
	spawnMobile("corellia", "minion_of_lord_nyax", 900, 1354.5, 31, -345.9, -120, 0)
	spawnMobile("corellia", "servant_of_lord_nyax", 900, 1351.9, 31, -347.3, 51, 0)
	--Inside
	spawnMobile("corellia", "fiend_of_lord_nyax", 900, 0.200391, 0.25, 5.98459, 0, 6035995)
	spawnMobile("corellia", "fiend_of_lord_nyax", 900, -0.494639, 0.25, 6.25404, 0, 6035995)
	spawnMobile("corellia", "disciple_of_lord_nyax", 900, 3.6188, 0.25, -4.09898, 0, 6035996)
	spawnMobile("corellia", "disciple_of_lord_nyax", 900, 2.61819, 0.25, -3.44736, 0, 6035996)
	spawnMobile("corellia", "zealot_of_lord_nyax", 900, 4.81463, -6.75, 5.40781, 0, 6035998)
	spawnMobile("corellia", "visionary_of_lord_nyax", 900, 3.44729, -6.75, 4.34948, 0, 6035998)
	spawnMobile("corellia", "zealot_of_lord_nyax", 900, 2.80898, -6.75, -7.19805, 0, 6035999)
	spawnMobile("corellia", "disciple_of_lord_nyax", 900, -5.37152, -13.7499, 0.459682, 0, 6036001)
	spawnMobile("corellia", "disciple_of_lord_nyax", 900, -3.0171, -13.7499, -0.894038, 0, 6036001)
	spawnMobile("corellia", "fiend_of_lord_nyax", 900, -1.05993, -13.7499, -2.09377, 0, 6036001)
	spawnMobile("corellia", "fiend_of_lord_nyax", 900, -5.53416, -13.75, -8.46985, 0, 6036001)
	spawnMobile("corellia", "fiend_of_lord_nyax", 900, 16.6905, -13.7584, 4.76515, 0, 6036003)
	spawnMobile("corellia", "visionary_of_lord_nyax", 900, 14.4694, -13.7584, 2.8743, 0, 6036003)
	spawnMobile("corellia", "lord_nyax", 1800, 19.4, -11.4, -21.1, 0, 6036004)
--Tarkin Specific
	--Outside Gates
	spawnMobile("corellia", "zealot_of_lord_nyax" , 900, 1384.6, 31.0, -320.7, 58, 0)
	spawnMobile("corellia", "zealot_of_lord_nyax" , 900, 1381.4, 31.0, -314.9, 56, 0)
	spawnMobile("corellia", "zealot_of_lord_nyax" , 900, 1336.1, 31.0, -338.5, -128, 0)
	spawnMobile("corellia", "zealot_of_lord_nyax" , 900, 1340.0, 31.0, -345.2, -116, 0)
	spawnMobile("corellia", "visionary_of_lord_nyax" , 900, 1342.2, 31.0, -339.8, -119, 0)
	spawnMobile("corellia", "visionary_of_lord_nyax" , 900, 1379.9, 31.0, -319.7, 58, 0)
	--Inside
	spawnMobile("corellia", "visionary_of_lord_nyax" , 900, 6.1, -6.8, -7.4, -10, 6035999)
	spawnMobile("corellia", "disciple_of_lord_nyax" , 900, 4.0, -6.8, -2.9, -2, 6035999)
--
	spawnMobile("corellia", "visionary_of_lord_nyax" , 900, -1.9, -13.7, -8.2, -20, 6036001)
--
	spawnMobile("corellia", "visionary_of_lord_nyax" , 900, -5.7, -13.8, 12.4, 137, 6036002)
	spawnMobile("corellia", "disciple_of_lord_nyax" , 900, -2.3, -13.8, 12.6, -169, 6036002)
	spawnMobile("corellia", "fanatic_of_lord_nyax" , 900, 1.5, -13.8, 11.6, -107, 6036002)
	spawnMobile("corellia", "fanatic_of_lord_nyax" , 900, 5.9, -13.8, 12.9, -90, 6036002)
	spawnMobile("corellia", "visionary_of_lord_nyax" , 900, 6.1, -13.8, 10.7, -92, 6036002)
--
	spawnMobile("corellia", "visionary_of_lord_nyax" , 900, 16.3, -13.8, 8.0, -135, 6036003)
--
	spawnMobile("corellia", "visionary_of_lord_nyax" , 900, 18.2, -13.8, -14.9, -17, 6036004)
	spawnMobile("corellia", "visionary_of_lord_nyax" , 900, 17.0, -13.8, -18.0, -19, 6036004)
	spawnMobile("corellia", "disciple_of_lord_nyax" , 900, 13.0, -13.8, -16.8, 12, 6036004)
	spawnMobile("corellia", "disciple_of_lord_nyax" , 900, 14.6, -13.8, -8.7, 12, 6036004)
end
