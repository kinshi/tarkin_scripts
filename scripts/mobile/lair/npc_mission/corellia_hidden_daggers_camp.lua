corellia_hidden_daggers_camp = Lair:new {
	mobiles = {{"hidden_daggers_extremist",1}, {"hidden_daggers_dissident",1},{"hidden_daggers_activist",1}},
	spawnLimit = 8,
	buildingsVeryEasy = {"object/tangible/lair/base/objective_banner_corellia.iff"},
	buildingsEasy = {"object/tangible/lair/base/objective_banner_corellia.iff"},
	buildingsMedium = {"object/tangible/lair/base/objective_banner_corellia.iff"},
	buildingsHard = {"object/tangible/lair/base/objective_banner_corellia.iff"},
	buildingsVeryHard = {"object/tangible/lair/base/objective_banner_corellia.iff"},
	mobType = "npc"
}

addLairTemplate("corellia_hidden_daggers_camp", corellia_hidden_daggers_camp)
