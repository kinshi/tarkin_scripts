aakuan_keeper = Creature:new {
	objectName = "@mob/creature_names:aakuan_keeper",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 40,
	chanceHit = 0.3,
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
	weapons = {"rifles"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(aakuan_keeper, "aakuan_keeper")
