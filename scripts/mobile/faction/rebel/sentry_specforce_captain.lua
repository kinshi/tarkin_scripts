sentry_specforce_captain = Creature:new {
	objectName = "",
	customName = "Specforce Sentry Captain",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 142,
	chanceHit = 70,
	damageMin = 845,
	damageMax = 1400,
	baseXp = 13462,
	baseHAM = 68000,
	baseHAMmax = 83000,
	armor = 2,
	resists = {60,50,80,30,25,25,30,45,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_specforce_captain_human_female_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_human_male_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_moncal_female_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_rodian_female_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_trandoshan_male_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_zabrak_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 7200000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
                {group = "melee_weapons", chance = 550000},
                {group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 25000},
				{group = "armor_attachments", chance = 25000},
				{group = "rebel_officer_common", chance = 450000}
			},
			lootChance = 2800000
		}						
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(sentry_specforce_captain, "sentry_specforce_captain")