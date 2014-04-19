jawa_warlord_poi = Creature:new {
	objectName = "@mob/creature_names:jawa_warlord",
	socialGroup = "jawa",
	pvpFaction = "jawa",
	faction = "jawa",
	level = 120,
	chanceHit = 0.55,
	damageMin = 400,
	damageMax = 800,
	baseXp = 25097,
	baseHAM = 40000,
	baseHAMmax = 55000,
	armor = 2,
	resists = {35,35,35,35,35,-1,35,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "jawa_common", chance = 3000000},
				{group = "armor_all", chance = 800000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "nge_house_jabba", chance = 1000000},
				{group = "resource_deed", chance = 500000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "color_crystals", chance = 200000}
			},
			lootChance = 5000000
		}					
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemannovice)
}

CreatureTemplates:addCreatureTemplate(jawa_warlord_poi, "jawa_warlord_poi")
