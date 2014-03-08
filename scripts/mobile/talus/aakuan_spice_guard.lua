aakuan_spice_guard = Creature:new {
	objectName = "",
	customName = "an Aa'kuan Spice Guard",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 85,
	chanceHit = 0.43,
	damageMin = 250,
	damageMax = 260,
	baseXp = 7822,
	baseHAM = 38000,
	baseHAMmax = 42000,
	armor = 1,
	resists = {70,70,40,10,60,10,10,25,-1},
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
		"object/mobile/dressed_aakuan_defender_human_female_01.iff",
		"object/mobile/dressed_aakuan_defender_human_male_01.iff"},
	lootGroups = {
	    {
		    groups = {
				{group = "junk", chance = 1600000},
				{group = "aakuan_common", chance = 1300001},
				{group = "armor_attachments", chance = 1200000},
				{group = "clothing_attachments", chance = 1200000},
				{group = "rifles", chance = 1533333},
				{group = "carbines", chance = 1533333},
				{group = "pistols", chance = 1533333}				
			},
		    lootChance = 3500000
		}	
	},
	weapons = {"aakuan_2h_weapons"},
	conversationTemplate = "",
	attacks = swordsmanmaster
}

CreatureTemplates:addCreatureTemplate(aakuan_spice_guard, "aakuan_spice_guard")
