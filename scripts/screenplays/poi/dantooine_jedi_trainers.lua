dantooine_jedi_trainers = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("dantooine_jedi_trainers", true)

function dantooine_jedi_trainers:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
	end
end

function dantooine_jedi_trainers:spawnMobiles()
	spawnMobile("dantooine", "trainer_healer",900,2534,56.42,-2861.33,-50,0)
	spawnMobile("dantooine", "trainer_enhancer",900,2531,56.50,-2857.82,-165,0)
	spawnMobile("dantooine", "trainer_defender",900,2527.15,56.76,-2856.62,-170,0)
	spawnMobile("dantooine", "trainer_powers",900,2525.22,56.91,-2855.43,-96,0)
	spawnMobile("dantooine", "trainer_lightsaber",900,2521.81,56.72,-2855.92,76,0)
end
