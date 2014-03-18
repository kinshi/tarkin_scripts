imperial_prison_guard = Creature:new {
	objectName = "@mob/creature_names:imperial_prison_guard",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 50,
	chanceHit = 0.60,
	damageMin = 340,
	damageMax = 560,
	baseXp = 4765,
	baseHAM = 15000,
	baseHAMmax = 18000,
	armor = 1,
	resists = {40,35,80,30,30,30,30,45,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_soldier_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 4600000},
				{group = "rifles", chance = 1200000},
				{group = "pistols", chance = 1200000},
				{group = "melee_weapons", chance = 1200000},
				{group = "carbines", chance = 1200000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000}
			},
			lootChance = 2800000
		}						
	},
	weapons = {"imperial_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(imperial_prison_guard, "imperial_prison_guard")
