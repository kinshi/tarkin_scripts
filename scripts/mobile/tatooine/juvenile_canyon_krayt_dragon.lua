juvenile_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:juvenile_canyon_krayt",
	socialGroup = "krayt",
	pvpFaction = "",
	faction = "",
	level = 122,
	chanceHit = 14.0,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 11577,
	baseHAM = 54000,
	baseHAMmax = 64000,
	armor = 2,
	resists = {170,170,15,15,110,15,15,15,-1},
	meatType = "meat_carnivore",
	meatAmount = 750,
	hideType = "hide_bristley",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 410,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/juvenile_canyon_krayt.iff"},
	scale = 0.55;
	lootGroups = {
		{
	        groups = {
				{group = "krayt_tissue_common", chance = 3300000},
				{group = "krayt_dragon_common", chance = 3400000},
				{group = "pearls_select", chance = 3300000}
			},
			lootChance = 5000000
		},
		{
	        groups = {
				{group = "composite_armor", chance = 2500000},
				{group = "ubese_armor", chance = 2500000},
				{group = "melee_two_handed", chance = 2500000},
				{group = "rifles", chance = 2500000}			
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stunChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(juvenile_canyon_krayt_dragon, "juvenile_canyon_krayt_dragon")
