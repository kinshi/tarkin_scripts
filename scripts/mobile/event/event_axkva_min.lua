event_axkva_min = Creature:new {
	objectName = "@mob/creature_names:axkva_min",
	customName = "Axkva Min",
	socialGroup = "nightsister",
	pvpFaction = "nightsister",
	faction = "nightsister",
	level = 300,
	chanceHit = 300,
	damageMin = 1300,
	damageMax = 2500,
	baseXp = 50000,
	baseHAM = 340000,
	baseHAMmax = 421000,
	armor = 3,
	resists = {80,35,35,80,80,80,80,80,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_axkva.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nightsister_rare", chance = 2000000},
				{group = "ns_clothing", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "resource_deed", chance = 2000000},
				{group = "clothing_attachments", chance = 20000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "axkva_min", chance = 10000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(event_axkva_min, "event_axkva_min")
