gcw_rebel_army_captain = Creature:new {
	objectName = "",
	customName = "Rebel Army Captain",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 80,
	chanceHit = 0.59,
	damageMin = 377,
	damageMax = 390,
	baseXp = 2914,
	baseHAM = 10920,
	baseHAMmax = 21000,
	armor = 2,
	resists = {80,85,58,58,38,38,90,80,-1},
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
		"object/mobile/dressed_rebel_army_captain_bothan_male.iff",
		"object/mobile/dressed_rebel_army_captain_human_male_01.iff",
		"object/mobile/dressed_rebel_army_captain_moncal_male_01.iff",
		"object/mobile/dressed_rebel_army_captain_trandoshan_female.iff",
		"object/mobile/dressed_rebel_army_captain_twk_male.iff",
		"object/mobile/dressed_rebel_army_captain_zabrak_female.iff"},
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
			lootChance = 4000000
		}	
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "rebel_recruiter_convotemplate",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_rebel_army_captain, "gcw_rebel_army_captain")
