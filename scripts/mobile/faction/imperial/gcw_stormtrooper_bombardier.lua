gcw_stormtrooper_bombardier = Creature:new {
	objectName = "",
	customName = "Stormtrooper Bombardier",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 55,
	chanceHit = 0.54,
	damageMin = 351,
	damageMax = 364,
	baseXp = 2637,
	baseHAM = 7670,
	baseHAMmax = 9360,
	armor = 3,
	resists = {25,25,52,25,25,25,25,-1,-1},
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

	templates = {"object/mobile/dressed_stormtrooper_bombardier_m.iff"},
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
			lootChance = 2800000
		}						
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(commandomaster)
}

CreatureTemplates:addCreatureTemplate(gcw_stormtrooper_bombardier, "gcw_stormtrooper_bombardier")
