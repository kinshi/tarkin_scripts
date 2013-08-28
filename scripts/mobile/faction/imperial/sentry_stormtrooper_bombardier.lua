sentry_stormtrooper_bombardier = Creature:new {
	objectName = "",
	customName = "Stormtrooper Sentry Bombardier",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 97,
	chanceHit = 0.95,
	damageMin = 620,
	damageMax = 950,
	baseXp = 9243,
	baseHAM = 20000,
	baseHAMmax = 25000,
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

	templates = {"object/mobile/dressed_stormtrooper_bombardier_m.iff"},
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
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(commandomaster)
}

CreatureTemplates:addCreatureTemplate(sentry_stormtrooper_bombardier, "sentry_stormtrooper_bombardier")
