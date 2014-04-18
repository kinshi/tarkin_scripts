rebel_specforce_general = Creature:new {
	objectName = "@mob/creature_names:rebel_specforce_general",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 28,
	chanceHit = 0.37,
	damageMin = 270,
	damageMax = 280,
	baseXp = 2914,
	baseHAM = 8200,
	baseHAMmax = 10000,
	armor = 1,
	resists = {65,75,45,45,30,30,80,65,-1},
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
		"object/mobile/dressed_rebel_specforce_general_bothan_male_01.iff",
		"object/mobile/dressed_rebel_specforce_general_sullustan_male_01.iff",
		"object/mobile/dressed_rebel_specforce_general_twk_female_01.iff"},

	lootGroups = {
		{
	        groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 2250000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
                		{group = "melee_weapons", chance = 1000000},
                		{group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "armor_attachments", chance = 1100000},
				{group = "rebel_officer_common", chance = 1450000}
			},
			lootChance = 3000000
		}	
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "rebel_recruiter_convotemplate",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(rebel_specforce_general, "rebel_specforce_general")
