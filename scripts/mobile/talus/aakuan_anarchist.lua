aakuan_anarchist = Creature:new {
	objectName = "",
	customName = "an Aa'kuan Anarchist",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 60,
	chanceHit = 0.39,
	damageMin = 290,
	damageMax = 300,
	baseXp = 8097,
	baseHAM = 35000,
	baseHAMmax = 48000,
	armor = 1,
	resists = {75,75,60,40,70,25,25,40,-1},
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
		"object/mobile/dressed_aakuan_follower_trandoshan_female_01.iff",
		"object/mobile/dressed_aakuan_follower_trandoshan_male_01.iff"},
	lootGroups = {
	    {
		    groups = {
				{group = "junk", chance = 2480000},
				{group = "aakuan_common", chance = 2480000},
				{group = "armor_attachments", chance = 600000},
				{group = "clothing_attachments", chance = 600000},
				{group = "rifles", chance = 1280000},
				{group = "carbines", chance = 1280000},
				{group = "pistols", chance = 1280000}				
			},
		    lootChance = 2200000
		}
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(aakuan_anarchist, "aakuan_anarchist")
