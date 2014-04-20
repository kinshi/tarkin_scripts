event_krayt_dragon_ancient = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_ancient",
	customName = "a krayt dragon ancient",
	socialGroup = "Krayt",
	pvpFaction = "",
	faction = "",
	level = 336,
	chanceHit = 300,
	damageMin = 2270,
	damageMax = 4250,
	baseXp = 50000,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 3,
	resists = {95,95,95,100,65,95,95,95,-1},
	meatType = "meat_carnivore",
	meatAmount = 5000,
	hideType = "hide_bristley",
	hideAmount = 5000,
	boneType = "bone_mammal",
	boneAmount = 3000,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,

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

CreatureTemplates:addCreatureTemplate(event_krayt_dragon_ancient, "event_krayt_dragon_ancient")
