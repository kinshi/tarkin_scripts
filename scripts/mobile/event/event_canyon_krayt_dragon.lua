event_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:canyon_krayt_dragon",
	customName = "a canyon krayt dragon",
	socialGroup = "Krayt",
	pvpFaction = "",
	faction = "",
	level = 275,
	chanceHit = 272.5,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 50000,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {60,60,60,60,50,60,60,60,-1},
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
	scale = 1.2,

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

CreatureTemplates:addCreatureTemplate(event_canyon_krayt_dragon, "event_canyon_krayt_dragon")
