event_valarian_henchman = Creature:new {
	objectName = "@mob/creature_names:valarian_henchman",
	socialGroup = "valarian",
	pvpFaction = "valarian",
	faction = "valarian",
	level = 160,
	chanceHit = 2.5,
	damageMin = 360,
	damageMax = 670,
	baseXp = 50102,
	baseHAM = 62900,
	baseHAMmax = 73500,
	armor = 3,
	resists = {30,30,30,30,30,30,30,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_valarian_henchman.iff"},
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
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(event_valarian_henchman, "event_valarian_henchman")
