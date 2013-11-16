gcw_stormtrooper_medic = Creature:new {
	objectName = "",
	customName = "Stormtrooper Medic",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 55,
	chanceHit = 0.54,
	damageMin = 312,
	damageMax = 325,
	baseXp = 2637,
	baseHAM = 9360,
	baseHAMmax = 11440,
	armor = 2,
	resists = {40,40,50,40,40,40,40,-1,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_stormtrooper_medic_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 6500000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
				{group = "melee_weapons", chance = 550000},
				{group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000},
				{group = "stormtrooper_common", chance = 700000}
			},
			lootChance = 2800000
		}						
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "imperial_recruiter_convotemplate",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_stormtrooper_medic, "gcw_stormtrooper_medic")
