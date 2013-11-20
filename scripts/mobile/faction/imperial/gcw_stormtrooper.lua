gcw_stormtrooper = Creature:new {
	objectName = "",
	customName = "Stormtrooper",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 55,
	chanceHit = 0.54,
	damageMin = 270,
	damageMax = 325,
	baseXp = 2637,
	baseHAM = 9360,
	baseHAMmax = 11440,
	armor = 3,
	resists = {30,30,52,30,30,30,30,-1,-1},
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
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_stormtrooper_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 3900000},
				{group = "rifles", chance = 1200000},
				{group = "pistols", chance = 1200000},
				{group = "melee_weapons", chance = 1200000},
				{group = "carbines", chance = 1200000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000},
				{group = "stormtrooper_common", chance = 700000}
			},
			lootChance = 3200000
		}						
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_stormtrooper, "gcw_stormtrooper")
