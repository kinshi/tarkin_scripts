jawa_healer_poi = Creature:new {
	objectName = "@mob/creature_names:jawa_healer",
	socialGroup = "jawa",
	pvpFaction = "jawa",
	faction = "jawa",
	level = 100,
	chanceHit = 0.4,
	damageMin = 350,
	damageMax = 700,
	baseXp = 17097,
	baseHAM = 35000,
	baseHAMmax = 55000,
	armor = 1,
	resists = {35,35,35,-1,35,35,35,-1,-1},
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
	creatureBitmask = PACK + HERD + HEALER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "jawa_common", chance = 4000000},
				{group = "armor_all", chance = 800000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "nge_house_jabba", chance = 500000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "color_crystals", chance = 200000}
			},
			lootChance = 4000000
		}						
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemannovice,medicmaster)
}

CreatureTemplates:addCreatureTemplate(jawa_healer_poi, "jawa_healer_poi")
