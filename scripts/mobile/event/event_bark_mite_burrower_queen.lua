event_bark_mite_burrower_queen = Creature:new {
	objectName = "@mob/creature_names:bark_mite_burrower_queen",
	socialGroup = "mite",
	pvpFaction = "",
	faction = "",
	level = 250,
	chanceHit = 1.0,
	damageMin = 440,
	damageMax = 900,
	baseXp = 50830,
	baseHAM = 81000,
	baseHAMmax = 113000,
	armor = 3,
	resists = {60,50,-1,80,-1,80,80,10,-1},
	meatType = "meat_insect",
	meatAmount = 500,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 2.0,

	templates = {"object/mobile/bark_mite_burrower_queen.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3300000},
				{group = "clothing_attachments", chance = 34000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"strongdisease",""},
		{"stunattack","stunChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_bark_mite_burrower_queen, "event_bark_mite_burrower_queen")
