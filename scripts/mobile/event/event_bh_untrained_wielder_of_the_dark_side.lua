event_bh_untrained_wielder_of_the_dark_side = Creature:new {
	objectName = "@mob/creature_names:untrained_wielder_of_the_dark_side",
	socialGroup = "kun",
	pvpFaction = "",
	faction = "",
	level = 250,
	chanceHit = 1.5,
	damageMin = 545,
	damageMax = 1100,
	baseXp = 50288,
	baseHAM = 91000,
	baseHAMmax = 114000,
	armor = 3,
	resists = {40,40,35,-1,-1,40,-1,35,5},
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.3,

	templates = {"object/mobile/dressed_untrained_wielder_of_the_darkside.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 1250000},
				{group = "crystals_quality", chance = 1250000},
				{group = "holocron_dark", chance = 1250000},
				{group = "holocron_light", chance = 1250000},
				{group = "holocron_splinters", chance = 1250000},
				{group = "armor_attachments", chance = 1250000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "resource_deed", chance = 1250000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(event_bh_untrained_wielder_of_the_dark_side, "event_bh_untrained_wielder_of_the_dark_side")
