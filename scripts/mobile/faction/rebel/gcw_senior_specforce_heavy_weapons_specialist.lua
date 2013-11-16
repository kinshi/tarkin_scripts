gcw_senior_specforce_heavy_weapons_specialist = Creature:new {
	objectName = "",
	customName = "Senior Specforce Heavy Weapons Specialist",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 70,
	chanceHit = 0.56,
	damageMin = 338,
	damageMax = 351,
	baseXp = 2822,
	baseHAM = 10530,
	baseHAMmax = 17000,
	armor = 3,
	resists = {25,25,25,-1,40,-1,40,-1,-1},
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
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rebel_second_lieutenant_human_female_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_rodian_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_trandoshan_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_twk_female_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_twk_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_zabrak_female_01.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 5700000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
                {group = "melee_weapons", chance = 1000000},
                {group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000}
			},
			lootChance = 3800000
		}	
	},
	weapons = {"rebel_weapons_heavy"},
	attacks = merge(commandomaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_senior_specforce_heavy_weapons_specialist, "gcw_senior_specforce_heavy_weapons_specialist")
