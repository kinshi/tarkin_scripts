JantaCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "JantaCaveScreenPlay",

	lootContainers = {
		529346,
        	529349,
        	529353,
        	529363,
        	529368
	},
	
	lootLevel = 90,	

	lootGroups = {
		{
			groups = {
				{group = "janta_common", chance = 2500000},
				{group = "deed_voucher", chance = 1000000},
				{group = "forage_medical_component", chance = 1500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nge_house_hut", chance = 1000000},
				{group = "armor_attachments", chance = 2000000}
			},
			lootChance = 8000000
		}					
	},
	
	lootContainerRespawn = 1800 
}

registerScreenPlay("JantaCaveScreenPlay", true)

function JantaCaveScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function JantaCaveScreenPlay:spawnMobiles()
	spawnMobile("dantooine", "janta_harvester_stronghold",900,6.9,-40.8,-73.5,-3,529325)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,11,-40.9,-69.7,-58,529325)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,-8.2,-64,-229.5,-76,529329)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,-5.4,-64.2,-234.8,-43,529329)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,-5.5,-64.9,-240.8,-83,529329)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,-94.6,-73.7,-163.4,-174,529330)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,-98.9,-73.3,-165.8,130,529330)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,-97.6,-72.7,-174.4,71,529330)
	
	spawnMobile("dantooine", "janta_herbalist_stronghold",900,-9,-40.5,-71.6,77,529325)
	spawnMobile("dantooine", "janta_herbalist_stronghold",900,-3.5,-40.5,-75.2,5,529325)
	spawnMobile("dantooine", "janta_herbalist_stronghold",900,-96.6,-102.4,-138.3,103,529330)
	spawnMobile("dantooine", "janta_herbalist_stronghold",900,-94.5,-101.9,-143.1,87,529330)
	spawnMobile("dantooine", "janta_herbalist_stronghold",900,-87.6,-101.9,-136.5,163,529330)
	
	spawnMobile("dantooine", "janta_loreweaver_stronghold",900,49.9,-46.2,-62.6,-99,529326)
	spawnMobile("dantooine", "janta_loreweaver_stronghold",900,46.4,-46.3,-60.5,-105,529326)
	spawnMobile("dantooine", "janta_loreweaver_stronghold",900,45.4,-46.2,-93.1,-21,529326)
	spawnMobile("dantooine", "janta_loreweaver_stronghold",900,41.9,-46.1,-98,-22,529326)
	spawnMobile("dantooine", "janta_loreweaver_stronghold",900,-28.7,-80.1,-148.5,11,529332)
	
	spawnMobile("dantooine", "janta_primalist_stronghold",900,58.3,-46.9,-123.3,-103,529327)
	spawnMobile("dantooine", "janta_primalist_stronghold",900,58.5,-47.8,-127,-91,529327)
	
	spawnMobile("dantooine", "janta_rockshaper_stronghold",900,-6.6,-45.4,-145.1,22,529327)
	spawnMobile("dantooine", "janta_rockshaper_stronghold",900,-0.9,-45,-141.7,18,529327)
	spawnMobile("dantooine", "janta_rockshaper_stronghold",900,-14.9,-63.7,-259.9,1,529329)
	spawnMobile("dantooine", "janta_rockshaper_stronghold",900,-9.7,-63.8,-260.6,-9,529329)
	spawnMobile("dantooine", "janta_rockshaper_stronghold",900,-21.5,-79.5,-143.4,-32,529332)
	
	spawnMobile("dantooine", "janta_shaman_stronghold",900,-59.6,-70.9,-180.4,-95,529330)
	spawnMobile("dantooine", "janta_shaman_stronghold",900,-63.8,-69.9,-171.1,-131,529330)
	spawnMobile("dantooine", "janta_shaman_stronghold",900,-26.1,-70.9,-148.2,-46,529332)
	--spawnMobile("dantooine", "janta_shaman_stronghold",900,-91.6,-100.4,-93.6,-178,529333)
	
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-10.9,-64,-183.5,79,529328)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-4.8,-65.5,-209.6,-94,529329)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-0.8,-65.7,-211.8,-91,529329)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-68.8,-70.2,-88.8,63,529331)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-62.2,-70.3,-87.2,-136,529331)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-32.3,-70.8,-85.9,-168,529331)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-29.2,-70.4,-87.1,166,529331)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-25.4,-69.7,-91.3,-55,529331)
	
	spawnMobile("dantooine", "janta_warrior_stronghold",900,67,-54.8,-156.2,-85,529327)
	spawnMobile("dantooine", "janta_warrior_stronghold",900,65.7,-54.5,-152.7,-101,529327)
	spawnMobile("dantooine", "janta_warrior_stronghold",900,60.3,-55.7,-154.6,72,529327)
	spawnMobile("dantooine", "janta_warrior_stronghold",900,-113.9,-69.4,-124.1,88,529330)
	spawnMobile("dantooine", "janta_warrior_stronghold",900,-93,-70.4,-123.2,-96,529330)
	--spawnMobile("dantooine", "janta_warrior_stronghold",900,-84.9,-100.1,-97.2,-109,529333)
	--spawnMobile("dantooine", "janta_warrior_stronghold",900,-98,-100.5,-100.5,79,529333)

--Tarkin Specific
	spawnMobile("dantooine", "janta_primalist_stronghold",900,-1.9,-4.7,13.5,24,529323)
	spawnMobile("dantooine", "janta_primalist_stronghold",900,12.1,-21.3,-19.2,-156,529324)
	spawnMobile("dantooine", "janta_primalist_stronghold",900,-11.2,-31.1,-31.1,93,529324)
	spawnMobile("dantooine", "janta_primalist_stronghold",900,-4.0,-45.0,-132.6,42,529327)

	spawnMobile("dantooine", "janta_harvester_stronghold",900,1.8,-4.6,13.4,-33,529323)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,11.5,-23.6,-26.7,-35,529324)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,5.8,-24.5,-28.0,-1,529324)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,5.5,-30.2,-30.1,82,529324)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,3.2,-44.6,-135.5,39,529327)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,-62.6,-69.9,-193.9,-97,529330)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,-123.1,-69.8,-196.6,45,529330)
	spawnMobile("dantooine", "janta_harvester_stronghold",900,-50.7,-68.9,-99.3,54,529331)

	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-12.4,-30.4,-25.5,97,529324)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,6.0,-40.5,-68.8,131,529325)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-11.0,-44.4,-140.1,104,529327)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,54.9,-48.0,-125.1,-92,529327)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-92.1,-69.8,-203.5,-23,529330)
	spawnMobile("dantooine", "janta_soothsayer_stronghold",900,-49.9,-69.4,-92.4,46,529331)

	spawnMobile("dantooine", "janta_loreweaver_stronghold",900,8.2,-40.4,-76.2,41,529325)
	spawnMobile("dantooine", "janta_loreweaver_stronghold",900,22.8,-49.5,-137.9,10,529327)
	spawnMobile("dantooine", "janta_loreweaver_stronghold",900,-13.6,-65.7,-214.4,34,529329)
	spawnMobile("dantooine", "janta_loreweaver_stronghold",900,-58.5,-68.7,-97.3,-58,529331)

	spawnMobile("dantooine", "janta_herbalist_stronghold",900,-13.7,-63.9,-224.4,17,529329)
	spawnMobile("dantooine", "janta_herbalist_stronghold",900,-88.9,-73.0,-168.8,83,529330)

	spawnMobile("dantooine", "janta_warrior_stronghold",900,60.9,-46.7,-124.9,-103,529327)
	spawnMobile("dantooine", "janta_warrior_stronghold",900,12.2,-63.7,-181.0,85,529328)
	spawnMobile("dantooine", "janta_warrior_stronghold",900,-21.1,-65.7,-241.9,19,529329)
	spawnMobile("dantooine", "janta_warrior_stronghold",900,-99,-72.7,-169.6,79,529330)
	spawnMobile("dantooine", "janta_warrior_stronghold",900,-12.7,-68.9,-95.6,-134,529331)

	spawnMobile("dantooine", "janta_rockshaper_stronghold",900,45.5,-45.9,-64.8,-64,529326)
	spawnMobile("dantooine", "janta_rockshaper_stronghold",900,55.9,-57.1,-182.8,-12,529327)
	spawnMobile("dantooine", "janta_rockshaper_stronghold",900,-102.5,-70.3,-122.1,177,529330)
	spawnMobile("dantooine", "janta_rockshaper_stronghold",900,-84.9,-100.1,-97.3,-96,529333)

	spawnMobile("dantooine", "janta_shaman_stronghold",900,48.8,-45.9,-100.9,-56,529326)
	spawnMobile("dantooine", "janta_shaman_stronghold",900,58.9,-57.5,-182.9,-41,529327)
	spawnMobile("dantooine", "janta_shaman_stronghold",900,-121.8,-69.3,-170.1,91,529330)
	spawnMobile("dantooine", "janta_shaman_stronghold",900,-98.0,-100.5,-100.4,80,529333)

	spawnMobile("dantooine", "janta_clan_leader_stronghold",1800,-91.6,-100.4,-93.7,-175,529333)

	spawnMobile("dantooine", "janta_horned_kath_hound_stronghold",1350,54.1,-45.5,-93.6,-9,529326)
	spawnMobile("dantooine", "janta_horned_kath_hound_stronghold",1350,36.2,-51.0,-138.7,-34,529327)
	spawnMobile("dantooine", "janta_horned_kath_hound_stronghold",1350,-69.8,-69.6,-195.1,-34,529330)
	spawnMobile("dantooine", "janta_horned_kath_hound_stronghold",1350,-98.0,-68.8,-89.4,155,529330)
	spawnMobile("dantooine", "janta_horned_kath_hound_stronghold",1350,-101.9,-69.3,-92.5,110,529330)
	spawnMobile("dantooine", "janta_horned_kath_hound_stronghold",1350,-9.3,-69.0,-92.6,-122,529331)
	spawnMobile("dantooine", "janta_horned_kath_hound_stronghold",1350,-81.1,-101.6,-133.0,124,529330)
	
end
