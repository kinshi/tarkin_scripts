event_acklay_easy = Creature:new {
	objectName = "@mob/creature_names:geonosian_acklay_bunker_boss",
	customName = "an acklay Adolescent",
	socialGroup = "geonosian_creature",
	pvpFaction = "geonosian_creature",
	faction = "",
	level = 200,
	chanceHit = 90,
	damageMin = 800,
	damageMax = 1300,
	baseXp = 50000,
	baseHAM = 80000,
	baseHAMmax = 110000,
	armor = 2,
	resists = {40,45,55,55,45,45,40,40,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 0.5,

	templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				{group = "acklay", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"posturedownattack","postureDownChance=30"}
	}
}

CreatureTemplates:addCreatureTemplate(event_acklay_easy, "event_acklay_easy")
