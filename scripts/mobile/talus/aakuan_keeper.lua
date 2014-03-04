aakuan_keeper = Creature:new {
	objectName = "@mob/creature_names:aakuan_keeper",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 40,
	chanceHit = 0.40,
	damageMin = 140,
	damageMax = 150,
	baseXp = 5714,
	baseHAM = 23000,
	baseHAMmax = 30000,
	armor = 1,
	resists = {40,40,30,20,40,40,40,30,-1},
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
		"object/mobile/dressed_aakuan_keeper_zabrak_female_01.iff",
		"object/mobile/dressed_aakuan_keeper_zabrak_male_01.iff"},
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
	weapons = {"aakuan_rifle_weapons"},
	conversationTemplate = "",
	attacks = riflemanmaster
}

CreatureTemplates:addCreatureTemplate(aakuan_keeper, "aakuan_keeper")
