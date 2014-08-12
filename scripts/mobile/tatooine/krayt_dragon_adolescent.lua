krayt_dragon_adolescent = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_adolescent",
	socialGroup = "krayt",
	pvpFaction = "",
	faction = "",
	level = 200,
	chanceHit = 27.25,
	damageMin = 990,
	damageMax = 1750,
	baseXp = 26356,
	baseHAM = 200000,
	baseHAMmax = 290000,
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

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	scale = 0.7;
	lootGroups = {
		{
	        groups = {
				{group = "krayt_dragon_common", chance = 3300000},
				{group = "krayt_tissue_uncommon", chance = 300000},
				{group = "pearls_premium", chance = 3400000}
			},
			lootChance = 7500000
		},
		{
	        groups = {
				{group = "composite_armor", chance = 2000000},
				{group = "ubese_armor", chance = 2000000},
				{group = "melee_two_handed", chance = 2000000},
				{group = "rifles", chance = 2000000},
				{group = "pearls_select", chance = 2000000}				
			},
			lootChance = 4000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareattack",""},
		{"posturedownattack","postureDownChance=50"},
		{"stunattack","stunChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(krayt_dragon_adolescent, "krayt_dragon_adolescent")
