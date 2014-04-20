event_royal_imperial_guard = Creature:new {
	objectName = "@mob/creature_names:emperor_royal_guard",
	customName = "Emperor's Hand",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 250,
	chanceHit = 15,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 50429,
	baseHAM = 124000,
	baseHAMmax = 180000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/royal_guard.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "clothing_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = forcewielder
}

CreatureTemplates:addCreatureTemplate(event_royal_imperial_guard, "event_royal_imperial_guard")
