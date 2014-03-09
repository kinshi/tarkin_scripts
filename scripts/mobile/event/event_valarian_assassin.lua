event_valarian_assassin = Creature:new {
	objectName = "@mob/creature_names:valarian_assassin",
	socialGroup = "valarian",
	pvpFaction = "valarian",
	faction = "valarian",
	level = 160,
	chanceHit = 2.0,
	damageMin = 360,
	damageMax = 670,
	baseXp = 50102,
	baseHAM = 62900,
	baseHAMmax = 73500,
	armor = 3,
	resists = {35,35,35,35,35,35,35,-1,-1},
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

	templates = {"object/mobile/dressed_tatooine_valarian_assassin.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "printer_parts", chance = 2000000},
				{group = "valarian_common", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "resource_deed", chance = 2000000}
			},
			lootChance = 10000000
		}				
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(event_valarian_assassin, "event_valarian_assassin")
