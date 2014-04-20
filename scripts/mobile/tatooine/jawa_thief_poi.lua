jawa_thief_poi = Creature:new {
	objectName = "@mob/creature_names:jawa_thief",
	socialGroup = "jawa",
	pvpFaction = "jawa",
	faction = "jawa",
	level = 9,
	chanceHit = 0.27,
	damageMin = 80,
	damageMax = 90,
	baseXp = 235,
	baseHAM = 675,
	baseHAMmax = 825,
	armor = 1,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
				{group = "jawa_common", chance = 4100000},
				{group = "armor_all", chance = 800000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "nge_house_jabba", chance = 400000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "color_crystals", chance = 200000}
			},
			lootChance = 3500000
		}					
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemannovice)
}

CreatureTemplates:addCreatureTemplate(jawa_thief_poi, "jawa_thief_poi")
