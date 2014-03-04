aakuan_defender = Creature:new {
	objectName = "@mob/creature_names:aakuan_defender",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 50,
	chanceHit = 0.4,
	damageMin = 190,
	damageMax = 200,
	baseXp = 6443,
	baseHAM = 35000,
	baseHAMmax = 38000,
	armor = 1,
	resists = {30,30,60,70,35,30,30,10,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_aakuan_defender_human_male_01.iff",
		"object/mobile/dressed_aakuan_defender_human_female_01.iff"},
	lootGroups = {
	    {
		    groups = {
				{group = "junk", chance = 3600000},
				{group = "aakuan_common", chance = 2300000},
				{group = "armor_attachments", chance = 800000},
				{group = "clothing_attachments", chance = 800000},
				{group = "rifles", chance = 900000},
				{group = "carbines", chance = 900000},
				{group = "pistols", chance = 900000}				
			},
		    lootChance = 3000000
		}
	},
	weapons = {"aakuan_pistol_weapons"},
	conversationTemplate = "",
	attacks = pistoleermaster
}

CreatureTemplates:addCreatureTemplate(aakuan_defender, "aakuan_defender")
