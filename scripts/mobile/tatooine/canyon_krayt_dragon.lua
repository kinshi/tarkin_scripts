canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:canyon_krayt_dragon",
	socialGroup = "krayt",
	pvpFaction = "",
	faction = "",
	level = 275,
	chanceHit = 27.25,
	damageMin = 1163,
	damageMax = 1875,
	baseXp = 26356,
	baseHAM = 83750,
	baseHAMmax = 96250,
	armor = 3,
	resists = {160,160,160,160,120,160,160,160,-1},
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

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 0.9;
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
		{"dizzyattack","dizzyChance=50"},
		{"stunattack","stunChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(canyon_krayt_dragon, "canyon_krayt_dragon")
