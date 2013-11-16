gcw_imperial_warrant_officer_i = Creature:new {
	objectName = "",
	customName = "Imperial Warrant Officer I",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 80,
	chanceHit = 0.50,
	damageMin = 234,
	damageMax = 247,
	baseXp = 1609,
	baseHAM = 5850,
	baseHAMmax = 10000,
	armor = 2,
	resists = {20,40,80,80,30,80,20,40,-1},
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
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_imperial_officer_f.iff",
		"object/mobile/dressed_imperial_officer_m.iff",
		"object/mobile/dressed_imperial_officer_m_2.iff",
		"object/mobile/dressed_imperial_officer_m_3.iff",
		"object/mobile/dressed_imperial_officer_m_4.iff",
		"object/mobile/dressed_imperial_officer_m_5.iff",
		"object/mobile/dressed_imperial_officer_m_6.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 7650000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
                {group = "melee_weapons", chance = 550000},
                {group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 25000},
				{group = "armor_attachments", chance = 25000}
			},
			lootChance = 3900000
		}						
	},
	weapons = {"imperial_weapons_medium"},
	conversationTemplate = "imperial_recruiter_convotemplate",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_imperial_warrant_officer_i, "gcw_imperial_warrant_officer_i")
