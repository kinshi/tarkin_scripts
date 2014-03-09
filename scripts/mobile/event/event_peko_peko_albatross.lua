event_peko_peko_albatross = Creature:new {
	objectName = "@mob/creature_names:peko_peko_albatross",
	customName = "a peko peko albatross (event)",
	socialGroup = "peko",
	pvpFaction = "",
	faction = "",
	level = 255,
	chanceHit = 100,
	damageMin = 945,
	damageMax = 1600,
	baseXp = 50000,
	baseHAM = 174000,
	baseHAMmax = 221000,
	armor = 2,
	resists = {100,80,30,80,80,90,25,25,-1},
	meatType = "meat_avian",
	meatAmount = 2000,
	hideType = "hide_wooly",
	hideAmount = 1000,
	boneType = "bone_avian",
	boneAmount = 1500,
	milk = 0,
	tamingChance = 0,
	ferocity = 15,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 2.5,

	templates = {"object/mobile/peko_peko_hue.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "peko_albatross", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareaknockdown","knockdownChance=60"}
	}
}

CreatureTemplates:addCreatureTemplate(event_peko_peko_albatross, "event_peko_peko_albatross")
