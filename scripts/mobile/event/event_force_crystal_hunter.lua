event_force_crystal_hunter = Creature:new {
	objectName = "@mob/creature_names:dark_force_crystal_hunter",
	socialGroup = "kun",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 2,
	damageMin = 820,
	damageMax = 1350,
	baseXp = 50921,
	baseHAM = 84000,
	baseHAMmax = 103000,
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
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dark_force_crystal_hunter.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystals_premium", chance = 1250000},
				{group = "color_crystals", chance = 1250000},
				{group = "holocron_dark", chance = 1250000},
				{group = "holocron_light", chance = 1250000},
				{group = "holocron_splinters", chance = 1250000},
				{group = "armor_attachments", chance = 1250000},
				{group = "resource_deed", chance = 1250000},
				{group = "clothing_attachments", chance = 1250000}
			},
			lootChance = 10000000
		}	
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(event_force_crystal_hunter, "event_force_crystal_hunter")
