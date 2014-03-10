event_escaped_singing_mountain_clan_slave = Creature:new {
	objectName = "@mob/creature_names:escaped_singing_mtn_clan_slave",
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

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_escaped_slave.iff"},
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
	attacks = merge(brawlermaster)
}

CreatureTemplates:addCreatureTemplate(event_escaped_singing_mountain_clan_slave, "event_escaped_singing_mountain_clan_slave")
