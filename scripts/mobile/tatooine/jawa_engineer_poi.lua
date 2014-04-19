jawa_engineer_poi = Creature:new {
	objectName = "@mob/creature_names:jawa_engineer",
	socialGroup = "jawa",
	pvpFaction = "jawa",
	faction = "jawa",
	level = 70,
	chanceHit = 0.3,
	damageMin = 220,
	damageMax = 400,
	baseXp = 14097,
	baseHAM = 29000,
	baseHAMmax = 35000,
	armor = 1,
	resists = {25,-1,25,25,25,25,25,-1,-1},
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
	creatureBitmask = HERD,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "junk", chance = 2300000},
				{group = "jawa_common", chance = 1500000},
				{group = "armor_all", chance = 800000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "nge_house_jabba", chance = 200000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "armor_attachments", chance = 1250000},
				{group = "color_crystals", chance = 200000}
			},
			lootChance = 3000000
		}						
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemannovice)
}

CreatureTemplates:addCreatureTemplate(jawa_engineer_poi, "jawa_engineer_poi")
