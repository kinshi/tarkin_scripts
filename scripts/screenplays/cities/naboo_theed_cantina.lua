naboo_theed_cantinaScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("naboo_theed_cantinaScreenPlay", true)

function naboo_theed_cantinaScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnMobiles()
	end
end

function naboo_theed_cantinaScreenPlay:spawnMobiles()
	--Jukebox
	spawnMobile("naboo", "commoner_naboo", 10, 43.5, 0.1, 3.3, -9, 89)
	--Slot Machine
	spawnMobile("naboo", "commoner_naboo", 10, 39.2, 0.1, 3.0, 0, 89)
	--Socialising #1
	spawnMobile("naboo", "commoner_naboo", 10, 30.2, 0.1, 4.5, 167, 90)
	spawnMobile("naboo", "commoner_naboo", 10, 30.1, 0.1, 3.0, -13, 90)
	--Arcade Game #1
	spawnMobile("naboo", "commoner_naboo", 10, -25.2, -0.9, -13.8, 174, 102)
	--Arcade Game #2
	spawnMobile("naboo", "commoner_naboo", 10, -47.0, 0.1, -20.5, -89, 103)
	--Bar
	spawnMobile("naboo", "commoner_naboo", 10, 1.5, -0.9, 5.7, 175, 91)
	--Food Bar
	spawnMobile("naboo", "commoner_naboo", 10, -18.0, -0.9, 12.8, -100, 100)
	--Gungan Roulette
	spawnMobile("naboo", "commoner_naboo", 10, -6.9, -0.9, 8.2, -33, 91)
	--Socialising #2
	spawnMobile("naboo", "commoner_naboo", 10, -5.0, -0.9, -7.6, 42, 91)
	spawnMobile("naboo", "commoner_naboo", 10, -3.8, -0.9, -6.3, -145, 91)

end
