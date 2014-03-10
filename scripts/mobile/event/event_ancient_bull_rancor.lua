event_ancient_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:ancient_bull_rancor",
	customName = "an ancient bull rancor",
	socialGroup = "rancor",
	pvpFaction = "",
	faction = "",
	level = 250,
	chanceHit = 2.0,
	damageMin = 800,
	damageMax = 1150,
	baseXp = 50000,
	baseHAM = 50000,
	baseHAMmax = 125000,
	armor = 3,
	resists = {30,60,30,100,100,100,30,30,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 1.5,

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
		{"creatureareableeding",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(event_ancient_bull_rancor, "event_ancient_bull_rancor")
