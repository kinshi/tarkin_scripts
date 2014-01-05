aakuan_warder = Creature:new {
	objectName = "@mob/creature_names:aakuan_warder",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 75,
	chanceHit = 0.37,
	damageMin = 260,
	damageMax = 270,
	baseXp = 8005,
	baseHAM = 45000,
	baseHAMmax = 55000,
	armor = 2,
	resists = {45,45,45,45,45,45,45,45,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_aakuan_warder_zabrak_female_01.iff",
		"object/mobile/dressed_aakuan_warder_zabrak_male_01.iff"},
	lootGroups = {
	    {
		    groups = {
				{group = "clothing_attachments", chance = 1300000},
				{group = "aakuan_common", chance = 2300000},
				{group = "armor_attachments", chance = 1300000},
				{group = "rifles", chance = 1700000},
				{group = "carbines", chance = 1700000},
				{group = "pistols", chance = 1700000}				
			},
		    lootChance = 2200000
		}	
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(aakuan_warder, "aakuan_warder")
