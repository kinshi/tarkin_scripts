giant_dune_kimogila = Creature:new {
	objectName = "@mob/creature_names:giant_dune_kimogila",
	socialGroup = "kimogila",
	pvpFaction = "",
	faction = "",
	level = 153,
	chanceHit = 8.5,
	damageMin = 895,
	damageMax = 1500,
	baseXp = 14504,
	baseHAM = 81000,
	baseHAMmax = 99000,
	armor = 2,
	resists = {65,80,65,100,65,65,100,65,-1},
	meatType = "meat_carnivore",
	meatAmount = 1500,
	hideType = "hide_leathery",
	hideAmount = 1500,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	scale = 1.3,
	lootGroups = {
	 {
	        groups = {
				{group = "giant_dune_kimo_common", chance = 3000000},
				{group = "kimogila_common", chance = 7000000},
			},
			lootChance = 7500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_dune_kimogila, "giant_dune_kimogila")
