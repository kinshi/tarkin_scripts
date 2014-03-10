event_warren_irradiated_worker = Creature:new {
	objectName = "@mob/creature_names:warren_irradiated_worker",
	socialGroup = "warren",
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
	ferocity = 15,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {
		"object/mobile/warren_irradiated_worker_s01.iff",
		"object/mobile/warren_irradiated_worker_s02.iff",
		"object/mobile/warren_irradiated_worker_s03.iff"},
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
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(event_warren_irradiated_worker, "event_warren_irradiated_worker")
