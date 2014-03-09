event_krayt_dragon_ancient_easy = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_ancient",
	customName = "a krayt dragon ancient (event)",
	socialGroup = "Krayt",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 200,
	damageMin = 1070,
	damageMax = 2600,
	baseXp = 100000,
	baseHAM = 150000,
	baseHAMmax = 251000,
	armor = 3,
	resists = {75,75,75,75,40,75,75,75,-1},
	meatType = "meat_carnivore",
	meatAmount = 2500,
	hideType = "hide_bristley",
	hideAmount = 2500,
	boneType = "bone_mammal",
	boneAmount = 2000,
	milk = 0,
	tamingChance = 0,
	ferocity = 25,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 0.8,

	templates = {"object/mobile/krayt_dragon.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 1600000},
				{group = "krayt_dragon_common", chance = 1600000},
				{group = "pearls_flawless", chance = 1600000},
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
		{"creatureareacombo",""},
		{"creatureareaknockdown","knockdownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_krayt_dragon_ancient_easy, "event_krayt_dragon_ancient_easy")
