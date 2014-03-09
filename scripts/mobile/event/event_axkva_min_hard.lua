event_axkva_min_hard = Creature:new {
	objectName = "@mob/creature_names:axkva_min",
	customName = "Axkva Min",
	socialGroup = "nightsister",
	pvpFaction = "nightsister",
	faction = "nightsister",
	level = 400,
	chanceHit = 300,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 100000,
	baseHAM = 402000,
	baseHAMmax = 521000,
	armor = 3,
	resists = {95,35,35,95,95,95,95,95,-1},
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
	scale = 1.2,

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

CreatureTemplates:addCreatureTemplate(event_axkva_min_hard, "event_axkva_min_hard")
