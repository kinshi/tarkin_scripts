event_gorax_minor = Creature:new {
	objectName = "@mob/creature_names:minor_gorax",
	customName = "a minor gorax",
	socialGroup = "gorax",
	pvpFaction = "",
	faction = "",
	level = 250,
	chanceHit = 40,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 50000,
	baseHAM = 109000,
	baseHAMmax = 129000,
	armor = 3,
	resists = {65,65,50,50,50,50,50,50,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/gorax.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "gorax_common", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(event_gorax_minor, "event_gorax_minor")
