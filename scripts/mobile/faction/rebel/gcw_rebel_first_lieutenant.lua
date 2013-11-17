gcw_rebel_first_lieutenant = Creature:new {
	objectName = "",
	customName = "Rebel First Lieutenant",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 75,
	chanceHit = 0.5,
	damageMin = 247,
	damageMax = 260,
	baseXp = 1803,
	baseHAM = 6500,
	baseHAMmax = 15000,
	armor = 2,
	resists = {80,90,55,55,35,35,90,70,-1},
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
		"object/mobile/dressed_rebel_first_lieutenant_bothan_male_01.iff",
		"object/mobile/dressed_rebel_first_lieutenant_human_female_01.iff",
		"object/mobile/dressed_rebel_first_lieutenant_human_male_01.iff",
		"object/mobile/dressed_rebel_first_lieutenant_moncal_female_01.iff",
		"object/mobile/dressed_rebel_first_lieutenant_moncal_female_02.iff",
		"object/mobile/dressed_rebel_first_lieutenant_sullustan_male_01.iff"},
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
			lootChance = 4100000
		}	
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_rebel_first_lieutenant, "gcw_rebel_first_lieutenant")
