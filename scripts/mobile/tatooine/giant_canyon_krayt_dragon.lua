giant_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:giant_canyon_krayt_dragon",
	socialGroup = "krayt",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 25.0,
	damageMin = 1453,
	damageMax = 2343,
	baseXp = 28549,
	baseHAM = 385000,
	baseHAMmax = 471000,
	armor = 2,
	resists = {150,150,150,150,100,150,150,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 870,
	boneType = "bone_mammal",
	boneAmount = 805,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 1.2;

	lootGroups = {
		{
	        groups = {
				{group = "krayt_dragon_common", chance = 3300000},
				{group = "krayt_tissue_uncommon", chance = 300000},
				{group = "pearls_premium", chance = 3400000}
			},
			lootChance = 7000000
		},
		{
	        groups = {
				{group = "composite_armor", chance = 2000000},
				{group = "ubese_armor", chance = 2000000},
				{group = "melee_two_handed", chance = 2000000},
				{group = "rifles", chance = 2000000},
				{group = "pearls_select", chance = 2000000}				
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"dizzyattack","dizzyChance=50"},
		{"creatureareaknockdown","knockdownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(giant_canyon_krayt_dragon, "giant_canyon_krayt_dragon")
