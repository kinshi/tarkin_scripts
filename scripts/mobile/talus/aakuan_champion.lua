aakuan_champion = Creature:new {
	objectName = "@mob/creature_names:aakuan_champion",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 90,
	chanceHit = 0.39,
	damageMin = 290,
	damageMax = 300,
	baseXp = 5097,
	baseHAM = 15000,
	baseHAMmax = 20000,
	armor = 3,
	resists = {60,60,30,20,40,35,60,35,1},
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
		"object/mobile/dressed_aakuan_champion_zabrak_female_01.iff",
		"object/mobile/dressed_aakuan_champion_zabrak_male_01.iff"},
	lootGroups = {
	    {
		    groups = {
				{group = "clothing_attachments", chance = 1330000},
				{group = "aakuan_common", chance = 2390000},
				{group = "armor_attachments", chance = 1330000},
				{group = "rifles", chance = 1650000},
				{group = "carbines", chance = 1650000},
				{group = "pistols", chance = 1650000}				
			},
		    lootChance = 2200000
		}
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(aakuan_champion, "aakuan_champion")
