gcw_rebel_sergeant = Creature:new {
	objectName = "",
	customName = "Rebel Sergeant",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 75,
	chanceHit = 0.4,
	damageMin = 221,
	damageMax = 234,
	baseXp = 1248,
	baseHAM = 3770,
	baseHAMmax = 7000,
	armor = 2,
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_sergeant_fat_zabrak_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_human_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_moncal_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_rodian_female_01.iff",
		"object/mobile/dressed_rebel_sergeant_rodian_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_twilek_female_old_01.iff"},
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
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_rebel_sergeant, "gcw_rebel_sergeant")
