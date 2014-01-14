aakuan_follower = Creature:new {
	objectName = "@mob/creature_names:aakuan_follower",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 30,
	chanceHit = 0.29,
	damageMin = 120,
	damageMax = 130,
	baseXp = 5000,
	baseHAM = 17500,
	baseHAMmax = 22000,
	armor = 1,
	resists = {40,40,30,40,40,20,40,40,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_aakuan_follower_trandoshan_female_01.iff",
		"object/mobile/dressed_aakuan_follower_trandoshan_male_01.iff"},
	lootGroups = {
	    {
		    groups = {
				{group = "junk", chance = 6600000},
				{group = "aakuan_common", chance = 2300000},
				{group = "armor_attachments", chance = 200000},
				{group = "rifles", chance = 300000},
				{group = "carbines", chance = 300000},
				{group = "pistols", chance = 300000}				
			},
		    lootChance = 2200000
		}
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster)
}

CreatureTemplates:addCreatureTemplate(aakuan_follower, "aakuan_follower")
