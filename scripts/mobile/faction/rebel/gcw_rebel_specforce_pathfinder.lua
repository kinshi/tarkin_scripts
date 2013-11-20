gcw_rebel_specforce_pathfinder = Creature:new {
	objectName = "",
	customName = "Rebel Specforce Pathfinder",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 80,
	chanceHit = 0.48,
	damageMin = 221,
	damageMax = 234,
	baseXp = 5330,
	baseHAM = 4100,
	baseHAMmax = 7500,
	armor = 2,
	resists = {80,90,60,45,35,40,90,80,-1},
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
		"object/mobile/dressed_rebel_specforce_pathfinder_human_male_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_moncal_female_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_rodian_female_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_twk_female_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_twk_male_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_zabrak_female_fat_01.iff"},
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

CreatureTemplates:addCreatureTemplate(gcw_rebel_specforce_pathfinder, "gcw_rebel_specforce_pathfinder")
