gcw_senior_specforce_marine = Creature:new {
	objectName = "",
	customName = "Senior Specforce Marine",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 80,
	chanceHit = 0.47,
	damageMin = 208,
	damageMax = 221,
	baseXp = 3130,
	baseHAM = 2400,
	baseHAMmax = 8000,
	armor = 3,
	resists = {75,90,40,60,50,50,50,20,-1},
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

	templates = {"object/mobile/dressed_rebel_specforce_guerilla_human_male_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerilla_moncal_male_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_human_female_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_rodian_female_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_rodian_male_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_zabrak_female_01.iff",},
	lootGroups = {
		{
	        groups = {
				{group = "color_crystals", chance = 100000},
				{group = "rebel_officer_common", chance = 3700000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
                		{group = "melee_weapons", chance = 1000000},
                		{group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "armor_attachments", chance = 1100000}
			},
			lootChance = 3500000
		}	
	},
	weapons = {"imperial_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_senior_specforce_marine, "gcw_senior_specforce_marine")
