event_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:bull_rancor",
	customName = "a bull rancor (event)",
	socialGroup = "rancor",
	pvpFaction = "",
	faction = "",
	level = 250,
	chanceHit = 2.0,
	damageMin = 650,
	damageMax = 950,
	baseXp = 50000,
	baseHAM = 40000,
	baseHAMmax = 110000,
	armor = 3,
	resists = {30,60,30,80,80,80,30,30,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 1.2,

	templates = {"object/mobile/bull_rancor.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 2500000},
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
		{"creatureareadisease",""},
		{"dizzyattack","dizzyChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_bull_rancor, "event_bull_rancor")
