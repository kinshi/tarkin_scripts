DroidEngineerCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "DroidEngineerCaveScreenPlay",
	
	lootContainers = {
		568995,
		871800,
		871802,
		871812
	},
	
	lootLevel = 95,	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "droid_loot", chance = 1100000},
				{group = "nyms_common", chance = 3500000},
				{group = "rifles", chance = 500000},
				{group = "pistols", chance = 500000},
				{group = "av_21", chance = 1000000},
				{group = "nge_house_mustafar", chance = 1000000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "armor_attachments", chance = 1100000}
			},
			lootChance = 10000000
		}					
	},
	
	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("DroidEngineerCaveScreenPlay", true)

function DroidEngineerCaveScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function DroidEngineerCaveScreenPlay:spawnMobiles()
	spawnMobile("lok", "de_droideka",600,16.3,-21.5,-20.9,-56,568975)
	spawnMobile("lok", "de_droideka",600,17.2,-35.3,-76.3,11,568976)
	spawnMobile("lok", "de_droideka",600,-28.2,-43.4,-92.3,109,568978)
	spawnMobile("lok", "de_droideka",600,-14.6,-44,-97.8,-60,568978)
	spawnMobile("lok", "de_droideka",600,-57.2,-51.2,-111.9,-100,568978)
	spawnMobile("lok", "de_droideka",600,-76.7,-67,-136.6,-31,568981)
	spawnMobile("lok", "de_droideka",600,-48.3,-68.3,-134.6,-105,568981)
	spawnMobile("lok", "de_droideka",600,-29.1,-68,-110.6,77,568978)
	spawnMobile("lok", "de_droideka",600,-0.9,-70.9,-108.6,157,568982)
	spawnMobile("lok", "de_droideka",600,43.9,-65.7,-84.1,-28,568983)
	spawnMobile("lok", "de_droideka",600,35.4,-66.5,-87.1,-5,568983)
	spawnMobile("lok", "de_droideka",600,-44.8,-66.8,-157.2,-111,568984)
	spawnMobile("lok", "de_droideka",600,-59.4,-65.2,-227.8,-2,568985)
	spawnMobile("lok", "de_droideka",600,-84.4,-65.8,-194.2,30,568984)
	spawnMobile("lok", "de_droideka",600,-12.7,-30.1,-41.8,-21,568958)
	spawnMobile("lok", "de_droideka",600,-17.7,-30,-47.7,15,568958)
	spawnMobile("lok", "de_droideka",600,-63.7,-30.5,-72.8,-73,568961)
	spawnMobile("lok", "de_droideka",600,-102.1,-38.6,-120.1,47,568965)
	spawnMobile("lok", "de_droideka",600,-105.2,-36.2,-64.3,-88,568962)
	spawnMobile("lok", "de_droideka",600,-112.8,-58.3,-28.8,-95,568972)
	spawnMobile("lok", "de_droideka",600,-140.7,-53.9,-87.2,177,568967)
	spawnMobile("lok", "de_droideka",600,-175,-49.8,-86.6,139,568966)
	spawnMobile("lok", "de_droideka",600,-166.7,-49.3,-84.4,-28,568966)
	spawnMobile("lok", "de_droideka",600,-160.7,-49.6,-56.6,-162,568966)
	spawnMobile("lok", "de_droideka",600,-117.3,-49.2,-60.1,-76,568962)
	spawnMobile("lok", "de_droideka",600,-103.6,-53,-59.6,108,568962)
	spawnMobile("lok", "de_droideka",600,-66.6,-46.5,-31.9,-138,568960)
	spawnMobile("lok", "de_droideka",600,-57.4,-41.2,-9.8,109,568960)
	
	spawnMobile("lok", "de_ig_assassin_droid",600,-6.4,-35.1,-79,103,568976)
	spawnMobile("lok", "de_ig_assassin_droid",600,-15.5,-35,-69,12,568976)
	spawnMobile("lok", "de_ig_assassin_droid",600,-111.2,-54.3,-112.5,92,568965)
	spawnMobile("lok", "de_ig_assassin_droid",600,-125.4,-60.3,-137.7,-33,568980)
	spawnMobile("lok", "de_ig_assassin_droid",600,-101,-70.2,-107.6,175,568965)
	spawnMobile("lok", "de_ig_assassin_droid",600,-88.8,-72.1,-117.1,-99,568965)
	spawnMobile("lok", "de_ig_assassin_droid",600,-77.4,-66.1,-196.1,-99,568984)
	spawnMobile("lok", "de_ig_assassin_droid",600,-53.4,-65.5,-229.5,-6,568985)
	spawnMobile("lok", "de_ig_assassin_droid",600,-53.1,-65.4,-192.4,6,568984)
	spawnMobile("lok", "de_ig_assassin_droid",600,1.4,-67.4,-73.3,129,568976)
	spawnMobile("lok", "de_ig_assassin_droid",600,11.5,-67.3,-70.2,-103,568976)
	spawnMobile("lok", "de_ig_assassin_droid",600,42.5,-67.2,-73.2,-119,568983)
	spawnMobile("lok", "de_ig_assassin_droid",600,33.7,-69.3,-106.8,-16,568983)
	spawnMobile("lok", "de_ig_assassin_droid",600,-34.6,-31.1,-22.8,84,568958)
	spawnMobile("lok", "de_ig_assassin_droid",600,-43.9,-29.7,-42.3,137,568959)
	spawnMobile("lok", "de_ig_assassin_droid",600,-75.9,-29.9,-42.1,109,568961)
	spawnMobile("lok", "de_ig_assassin_droid",600,-103.2,-39.1,-87,-35,568967)
	spawnMobile("lok", "de_ig_assassin_droid",600,-107.4,-39.1,-81,133,568967)
	spawnMobile("lok", "de_ig_assassin_droid",600,-104.4,-58.2,-29.9,-76,568972)
	spawnMobile("lok", "de_ig_assassin_droid",600,-98.6,-54.9,-88.3,-13,568967)
	spawnMobile("lok", "de_ig_assassin_droid",600,-124.2,-53.8,-86.9,61,568967)
	spawnMobile("lok", "de_ig_assassin_droid",600,-163,-49.8,-79.5,-137,568966)
	spawnMobile("lok", "de_ig_assassin_droid",600,-166.7,-49.8,-70.9,167,568966)
	spawnMobile("lok", "de_ig_assassin_droid",600,-173.4,-49.8,-59.4,40,568966)
	spawnMobile("lok", "de_ig_assassin_droid",600,-71.4,-47,-69.9,-41,568961)
	spawnMobile("lok", "de_ig_assassin_droid",600,-64.5,-46.9,-73.5,129,568961)
--Tarkin Specific
	--Blastromech
	spawnMobile("lok", "de_blastromech",600,0.2,-7.7,8.6,1,568957)
	spawnMobile("lok", "de_blastromech",600,-0.1,-12.6,-2.5,0,568957)
	spawnMobile("lok", "de_blastromech",600,0.1,-20.9,-15.6,-2,568957)
	spawnMobile("lok", "de_blastromech",600,-41.6,-46.1,-102.5,-24,568978)
	spawnMobile("lok", "de_blastromech",600,-132.1,-53.4,-112.0,137,568979)
	spawnMobile("lok", "de_blastromech",600,-132.4,-54.2,-116.0,166,568979)
	spawnMobile("lok", "de_blastromech",600,-127.5,-53.9,-111.1,105,568979)
	spawnMobile("lok", "de_blastromech",600,-69.1,-65.6,-179.6,-4,568984)
	spawnMobile("lok", "de_blastromech",600,-48.6,-68.2,-112.8,135,568981)
	spawnMobile("lok", "de_blastromech",600,-50.7,-69.5,-117.2,168,568981)
	spawnMobile("lok", "de_blastromech",600,-45.7,-68.4,-112.7,100,568981)
	spawnMobile("lok", "de_blastromech",600,20.4,-67.1,-69.6,140,568976)
	spawnMobile("lok", "de_blastromech",600,29.1,-68.6,-100.8,15,568983)
	spawnMobile("lok", "de_blastromech",600,-44.4,-34.8,-11.7,152,568958)
	spawnMobile("lok", "de_blastromech",600,-64.5,-46.4,-49.0,-117,568961)
	spawnMobile("lok", "de_blastromech",600,-161.0,-50.0,-39.8,113,568964)
	spawnMobile("lok", "de_blastromech",600,-173.0,-52.4,-101.9,179,568968)
	spawnMobile("lok", "de_blastromech",600,-173.7,-53.2,-112.6,129,568968)
	spawnMobile("lok", "de_blastromech",600,-132.8,-54.0,-82.8,99,568967)
	spawnMobile("lok", "de_blastromech",600,-113.0,-44.1,-7.7,144,568973)
	spawnMobile("lok", "de_blastromech",600,-104.1,-37.9,-100.0,174,568967)
	spawnMobile("lok", "de_blastromech",600,-73.2,-33.7,-87.0,-9,568963)
	spawnMobile("lok", "de_blastromech",600,-51.6,-29.9,-41.8,117,568959)
	spawnMobile("lok", "de_blastromech",600,-35.8,-29.8,-49.1,99,568959)
	
	--IG Assassin Droid
	spawnMobile("lok", "de_ig_assassin_droid",600,16.5,-27.7,-39.7,9,568975)
	spawnMobile("lok", "de_ig_assassin_droid",600,19.8,-27.6,-39.9,51,568975)
	spawnMobile("lok", "de_ig_assassin_droid",600,-12.2,-34.7,-79.3,93,568976)
	spawnMobile("lok", "de_ig_assassin_droid",600,-7.5,-43.9,-97.3,-90,568978)
	spawnMobile("lok", "de_ig_assassin_droid",600,-18.1,-67.8,-107.5,67,568982)
	spawnMobile("lok", "de_ig_assassin_droid",600,-32.8,-31.2,-15.8,90,568958)
	spawnMobile("lok", "de_ig_assassin_droid",600,-33.5,-31.2,-19.2,101,568958)
	spawnMobile("lok", "de_ig_assassin_droid",600,-79.6,-59.8,-70.5,-1,568970)
	spawnMobile("lok", "de_ig_assassin_droid",600,-104.0,-42.4,-15.8,-59,568973)
	spawnMobile("lok", "de_ig_assassin_droid",600,-73.1,-31.6,-80.6,-9,568963)
	spawnMobile("lok", "de_ig_assassin_droid",600,-18.8,-29.9,-21.5,64,565958)
	
	--Battle Droid
	spawnMobile("lok", "de_battle_droid",600,13.2,-33.7,-58.8,7,568975)
	spawnMobile("lok", "de_battle_droid",600,17.4,-34.2,-58.1,0,568975)
	spawnMobile("lok", "de_battle_droid",600,-11.6,-35.0,-70.6,140,568976)
	spawnMobile("lok", "de_battle_droid",600,-15.5,-41.2,-87.9,-150,568978)
	spawnMobile("lok", "de_battle_droid",600,-97.4,-70.0,-112.4,-163,568965)
	spawnMobile("lok", "de_battle_droid",600,-82.6,-72.2,-116.0,172,568965)
	spawnMobile("lok", "de_battle_droid",600,-58.9,-65.7,-176.6,-4,568984)
	spawnMobile("lok", "de_battle_droid",600,3.3,-67.5,-67.9,119,568976)
	spawnMobile("lok", "de_battle_droid",600,35.3,-68.0,-95.7,-4,568983)
	spawnMobile("lok", "de_battle_droid",600,-39.8,-33.8,-9.6,158,568958)
	spawnMobile("lok", "de_battle_droid",600,-73.0,-46.6,-57.9,67,568961)
	spawnMobile("lok", "de_battle_droid",600,-115.1,-54.5,-82.0,85,568967)
	spawnMobile("lok", "de_battle_droid",600,-123.3,-57.7,-28.9,-60,568972)
	spawnMobile("lok", "de_battle_droid",600,-128.6,-57.6,-24.8,-46,568974)
	spawnMobile("lok", "de_battle_droid",600,-134.8,-57.4,-26.8,-16,568974)
	spawnMobile("lok", "de_battle_droid",600,-131.2,-53.3,-10.4,68,568973)
	spawnMobile("lok", "de_battle_droid",600,-103.6,-42.2,-9.9,-162,568973)
	spawnMobile("lok", "de_battle_droid",600,-126.4,-33.9,-63.6,162,568962)
	spawnMobile("lok", "de_battle_droid",600,-128.3,-38.1,-79.0,89,568967)
	spawnMobile("lok", "de_battle_droid",600,-70.5,-32.5,-84.2,-9,568963)
	
	--Droideka
	spawnMobile("lok", "de_droideka",600,-52.1,-48.9,-98.1,148,568978)
	spawnMobile("lok", "de_droideka",600,-125.9,-60.2,-136.0,99,568980)
	spawnMobile("lok", "de_droideka",600,-74.4,-66.7,-134.1,-45,568981)
	spawnMobile("lok", "de_droideka",600,-84.8,-66.0,-16.0,124,568984)
	spawnMobile("lok", "de_droideka",600,-63.8,-66.2,-173.7,-5,568984)
	spawnMobile("lok", "de_droideka",600,-44.6,-66.3,-183.3,-62,568984)
	spawnMobile("lok", "de_droideka",600,-61.4,-44.1,-21.0,37,568960)
	spawnMobile("lok", "de_droideka",600,-94.3,-54.7,-80.4,86,586967)
	spawnMobile("lok", "de_droideka",600,-81.2,-57.9,-41.7,-75,568970)
	spawnMobile("lok", "de_droideka",600,-72.7,-38.0,-118.0,6,568965)
	spawnMobile("lok", "de_droideka",600,-68.1,-30.5,-43.1,87,568961)
	
	--Super Battle Droid
	spawnMobile("lok", "de_s_battle_droid",600,-141.5,-49.7,-50.9,-24,568964)
	spawnMobile("lok", "de_s_battle_droid",600,-149.9,-54.4,-122.3,37,568968)
	spawnMobile("lok", "de_s_battle_droid",600,-64.5,-65.7,-149.7,-3,568984)
	spawnMobile("lok", "de_s_battle_droid",600,1.7,-68.1,-89.3,16,568982)
	spawnMobile("lok", "de_s_battle_droid",600,-29.3,-35.7,-69.6,106,568977)
	spawnMobile("lok", "de_s_battle_droid",600,-89.4,-53.9,-113.4,89,568965)
	spawnMobile("lok", "de_s_battle_droid",600,-105.6,70.0,-121.4,101,568965)
	spawnMobile("lok", "de_s_battle_droid",600,-102.6,-42.0,-30.0,-179,568972)
	
	--Super Battle Droid Boss
	spawnMobile("lok", "de_s_battle_droid_boss",600,-57.8,-66.3,-237.5,5,568985)
end
