gcw_rebel_medic = Creature:new {
	objectName = "",
	customName = "Rebel Medic",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 75,
	chanceHit = 0.47,
	damageMin = 221,
	damageMax = 234,
	baseXp = 960,
	baseHAM = 3770,
	baseHAMmax = 12000,
	armor = 2,
	resists = {75,80,55,55,40,40,95,80,-1},
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
	creatureBitmask = PACK + HEALER,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_medic3_moncal_female_01.iff",
		"object/mobile/dressed_rebel_medic2_21b_01.iff",
		"object/mobile/dressed_rebel_medic1_bothan_male_01.iff"},
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
			lootChance = 4000000
		}	
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "rebel_recruiter_convotemplate",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_rebel_medic, "gcw_rebel_medic")
