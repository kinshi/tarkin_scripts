event_escaped_nightsister_slave = Creature:new {
	objectName = "@mob/creature_names:escaped_nightsister_slave",
	socialGroup = "slave",
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
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_escaped_slave.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nightsister_common", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(event_escaped_nightsister_slave, "event_escaped_nightsister_slave")
