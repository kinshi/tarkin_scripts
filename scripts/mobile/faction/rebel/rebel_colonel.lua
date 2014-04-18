rebel_colonel = Creature:new {
	objectName = "@mob/creature_names:rebel_colonel",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 24,
	chanceHit = 0.35,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2543,
	baseHAM = 6800,
	baseHAMmax = 8300,
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
		"object/mobile/dressed_rebel_colonel_bothan_male.iff",
		"object/mobile/dressed_rebel_colonel_fat_zabrak_male.iff",
		"object/mobile/dressed_rebel_colonel_moncal_female.iff",
		"object/mobile/dressed_rebel_colonel_old_human_female.iff",
		"object/mobile/dressed_rebel_colonel_sullustan_male_01.iff",
		"object/mobile/dressed_rebel_colonel_twk_male_01.iff"},
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

CreatureTemplates:addCreatureTemplate(rebel_colonel, "rebel_colonel")
