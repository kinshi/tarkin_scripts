event_juvenile_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:juvenile_canyon_krayt",
	customName = "a juvenile canyon krayt dragon (event)",
	socialGroup = "Krayt",
	pvpFaction = "",
	faction = "",
	level = 152,
	chanceHit = 40,
	damageMin = 745,
	damageMax = 1500,
	baseXp = 50000,
	baseHAM = 54000,
	baseHAMmax = 64000,
	armor = 3,
	resists = {50,50,50,50,10,50,50,50,-1},
	meatType = "meat_carnivore",
	meatAmount = 2000,
	hideType = "hide_bristley",
	hideAmount = 2000,
	boneType = "bone_mammal",
	boneAmount = 1500,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 1.1,

	templates = {"object/mobile/juvenile_canyon_krayt.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "krayt_dragon_common", chance = 1600000},
				{group = "krayt_tissue_uncommon", chance = 1600000},
				{group = "pearls_premium", chance = 1600000},
				{group = "armor_attachments", chance = 1600000},
				{group = "resource_deed", chance = 2000000},
				{group = "clothing_attachments", chance = 1600000}					
			},
			lootChance = 10000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"posturedownattack","postureDownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_juvenile_canyon_krayt_dragon, "event_juvenile_canyon_krayt_dragon")
