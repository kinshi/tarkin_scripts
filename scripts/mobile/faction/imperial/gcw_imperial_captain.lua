gcw_imperial_captain = Creature:new {
	objectName = "",
	customName = "Imperial Captain",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
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
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_captain_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 7650000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
                {group = "melee_weapons", chance = 550000},
                {group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 25000},
				{group = "armor_attachments", chance = 25000}
			},
			lootChance = 3500000
		}						
	},
	weapons = {"imperial_weapons_medium"},
	attacks = {},
	conversationTemplate = "",
	optionsBitmask = 128
}

CreatureTemplates:addCreatureTemplate(gcw_imperial_captain, "gcw_imperial_captain")
