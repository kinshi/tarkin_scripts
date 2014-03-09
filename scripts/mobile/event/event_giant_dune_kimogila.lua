event_giant_dune_kimogila = Creature:new {
	objectName = "@mob/creature_names:giant_dune_kimogila",
	customName = "a giant dune kimogila alpha-male",
	socialGroup = "kimogila",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 85,
	damageMin = 1200,
	damageMax = 2100,
	baseXp = 100000,
	baseHAM = 101000,
	baseHAMmax = 129000,
	armor = 2,
	resists = {65,80,65,100,65,65,100,65,-1},
	meatType = "meat_carnivore",
	meatAmount = 2000,
	hideType = "hide_leathery",
	hideAmount = 2000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 1.3,

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "giant_dune_kimo_common", chance = 2000000},
				{group = "kimogila_common", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "resource_deed", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(event_giant_dune_kimogila, "event_giant_dune_kimogila")
