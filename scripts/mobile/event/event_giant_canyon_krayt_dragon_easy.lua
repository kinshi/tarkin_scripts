event_giant_canyon_krayt_dragon_easy = Creature:new {
	objectName = "@mob/creature_names:giant_canyon_krayt_dragon",
	customName = "a giant canyon krayt dragon",
	socialGroup = "Krayt",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 15.0,
	damageMin = 900,
	damageMax = 2100,
	baseXp = 50000,
	baseHAM = 150000,
	baseHAMmax = 220000,
	armor = 3,
	resists = {50,50,50,50,50,50,50,50,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 0.8,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
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
		{"creatureareaknockdown","knockdownChance=30"}
	}
}

CreatureTemplates:addCreatureTemplate(event_giant_canyon_krayt_dragon_easy, "event_giant_canyon_krayt_dragon_easy")
