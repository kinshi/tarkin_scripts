event_escaped_prisoner = Creature:new {
	objectName = "@mob/creature_names:prisoner",
	socialGroup = "prisoner",
	pvpFaction = "",
	faction = "",
	level = 90,
	chanceHit = 1,
	damageMin = 270,
	damageMax = 580,
	baseXp = 52730,
	baseHAM = 27200,
	baseHAMmax = 38800,
	armor = 1,
	resists = {55,55,25,-1,-1,25,-1,45,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dathomir_prisoner_05.iff",
		"object/mobile/dressed_dathomir_prisoner_04.iff",
		"object/mobile/dressed_dathomir_prisoner_03.iff",
		"object/mobile/dressed_dathomir_prisoner_02.iff",
		"object/mobile/dressed_dathomir_prisoner_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000},
				{group = "clothing_attachments", chance = 3300000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(event_escaped_prisoner, "event_escaped_prisoner")
