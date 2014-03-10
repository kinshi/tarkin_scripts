event_canyon_krayt_dragon_easy = Creature:new {
	objectName = "@mob/creature_names:canyon_krayt_dragon",
	customName = "a canyon krayt dragon",
	socialGroup = "Krayt",
	pvpFaction = "",
	faction = "",
	level = 250,
	chanceHit = 200,
	damageMin = 1111,
	damageMax = 2100,
	baseXp = 50000,
	baseHAM = 281000,
	baseHAMmax = 321000,
	armor = 3,
	resists = {50,50,50,50,40,50,50,50,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 675,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 0.8,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "krayt_dragon_common", chance = 2000000},
				{group = "krayt_tissue_uncommon", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "resource_deed", chance = 2000000}				
			},
			lootChance = 10000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"stunattack","stunChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_canyon_krayt_dragon_easy, "event_canyon_krayt_dragon_easy")
