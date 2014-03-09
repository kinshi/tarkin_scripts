event_krayt_dragon_ancient = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_ancient",
	customName = "a krayt dragon ancient",
	socialGroup = "Krayt",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 300,
	damageMin = 2270,
	damageMax = 3500,
	baseXp = 100000,
	baseHAM = 310000,
	baseHAMmax = 401000,
	armor = 3,
	resists = {90,90,90,100,60,90,90,90,-1},
	meatType = "meat_carnivore",
	meatAmount = 2500,
	hideType = "hide_bristley",
	hideAmount = 2500,
	boneType = "bone_mammal",
	boneAmount = 2000,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 1.3,

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
		{"dizzyattack","dizzyChance=50"},
		{"blindattack","blindChance=50"},
		{"intimidationattack","intimidationChance=50"},
		{"creatureareaknockdown","knockdownChance=50"},
		{"stunattack","stunChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_krayt_dragon_ancient, "event_krayt_dragon_ancient")
