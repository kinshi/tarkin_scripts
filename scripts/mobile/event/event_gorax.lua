event_gorax = Creature:new {
	objectName = "@mob/creature_names:gorax",
	customName = "Gorax",
	socialGroup = "gorax",
	pvpFaction = "",
	faction = "",
	level = 400,
	chanceHit = 50,
	damageMin = 1645,
	damageMax = 2500,
	baseXp = 100000,
	baseHAM = 445000,
	baseHAMmax = 5221000,
	armor = 3,
	resists = {65,65,65,65,65,65,65,65,1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 1.1,

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
		{"creatureareaattack",""},
		{"creatureareaknockdown","knockdownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_gorax, "event_gorax")
