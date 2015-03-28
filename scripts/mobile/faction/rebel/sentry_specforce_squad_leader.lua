sentry_specforce_squad_leader = Creature:new {
	objectName = "",
	customName = "Specforce Sentry Squad Leader",
	socialGroup = "rebel",
	faction = "rebel",
	level = 122,
	chanceHit = 40,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 11577,
	baseHAM = 44000,
	baseHAMmax = 54000,
	armor = 0,
	resists = {55,45,80,30,0,0,30,45,-1},
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
		"object/mobile/dressed_rebel_specforce_sergeant_bothan_male_01.iff",
		"object/mobile/dressed_rebel_specforce_sergeant_human_male_01.iff",
		"object/mobile/dressed_rebel_specforce_sergeant_moncal_female_01.iff",
		"object/mobile/dressed_rebel_specforce_sergeant_moncal_male_01.iff",
		"object/mobile/dressed_rebel_specforce_sergeant_trandoshan_male_01.iff",
		"object/mobile/dressed_rebel_specforce_sergeant_twk_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 4200000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
                		{group = "melee_weapons", chance = 550000},
		                {group = "carbines", chance = 550000},
				{group = "imperial_spire", chance = 1000000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "armor_attachments", chance = 1250000}
			},
			lootChance = 2800000
		}						
	},
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(sentry_specforce_squad_leader, "sentry_specforce_squad_leader")
