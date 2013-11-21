gcw_specforce_major = Creature:new {
	objectName = "",
	customName = "Specforce Major",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 120,
	chanceHit = 0.56,
	damageMin = 351,
	damageMax = 364,
	baseXp = 3788,
	baseHAM = 10660,
	baseHAMmax = 21000,
	armor = 2,
	resists = {70,85,45,50,35,65,90,65,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rebel_specforce_guerilla_human_male_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerilla_moncal_male_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_human_female_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_rodian_female_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_rodian_male_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_zabrak_female_01.iff",
	},
lootGroups = {
		{
	        groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 5250000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
                {group = "melee_weapons", chance = 1000000},
                {group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000},
				{group = "rebel_officer_common", chance = 450000}
			},
			lootChance = 4500000
		}	
	},
	weapons = {"imperial_weapons_medium"},
	conversationTemplate = "rebel_recruiter_convotemplate",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_specforce_major, "gcw_specforce_major")
