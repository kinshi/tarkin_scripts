aakuari_assassin = Creature:new {
	objectName = "",
	customName = "an Aa'kuan Assassin",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 80,
	chanceHit = 0.37,
	damageMin = 270,
	damageMax = 280,
	baseXp = 8188,
	baseHAM = 45000,
	baseHAMmax = 58000,
	armor = 2,
	resists = {55,55,55,55,55,55,55,55,-1},
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

CreatureTemplates:addCreatureTemplate(aakuari_assassin, "aakuari_assassin")
