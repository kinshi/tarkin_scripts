--This is to be used for static spawns that are NOT part of caves, cities, dungeons, poi's, or other large screenplays.
Yavin4StaticSpawnsScreenPlay = ScreenPlay:new 
{
	numberOfActs = 1,

	screenplayName = "Yavin4StaticSpawnsScreenPlay",
}

registerScreenPlay("Yavin4StaticSpawnsScreenPlay", true)

function Yavin4StaticSpawnsScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
	end
end

function Yavin4StaticSpawnsScreenPlay:spawnMobiles()
	
	-- Light Jedi Enclave (-5575, 4910)
	spawnMobile("yavin4", "light_jedi_sentinel", 1800, -5579.0, 87.7, 4908.5, -179, 0)
	spawnMobile("yavin4", "light_jedi_sentinel", 1800, -5572.6, 87.7, 4908.2, -179, 0)

	-- Dark Jedi Enclave (5068, 310)
	spawnMobile("yavin4", "dark_jedi_sentinel", 1800, 5074.2, 78.8, 313.9, 90, 0)
	spawnMobile("yavin4", "dark_jedi_sentinel", 1800, 5074.3, 79.2, 306.4, 90, 0)

	-- Yavin4 Ruins (-6299 -1502)
	spawnMobile("yavin4", "crazed_geonosian_guard",210,-6299.1,24.7,-1502,0,0)
	spawnMobile("yavin4", "crazed_geonosian_guard",210,-6299.1,25.6,-1506.4,179,0)
	spawnMobile("yavin4", "crazed_geonosian_guard",210,-6302.1,24.9,-1504.2,-90,0)
	spawnMobile("yavin4", "crazed_geonosian_guard",210,-6296.0,25.3,-1504.2,90,0)

	-- FS Trainers

	spawnMobile("yavin4", "trainer_fs",210,-16,163,-3916,90,0)


	-- Black Sun Spawns
	
	-- NW Spawns
	
	--Assassins
	
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)

	--Scouts
	
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + -5000, 9.7, math.random(2000) + 4000, math.random(360), 0)	

	--East-Central
	
	--Assassins
	
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_assassin_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)

	--Scouts
	
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)
	spawnMobile("yavin4", "black_sun_guard_02", 1200, math.random(2000) + 4000, 9.7, math.random(2000) + 2000, math.random(360), 0)			

end
