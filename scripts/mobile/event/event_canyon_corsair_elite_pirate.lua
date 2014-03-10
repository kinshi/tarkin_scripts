event_canyon_corsair_elite_pirate = Creature:new {
	objectName = "@mob/creature_names:canyon_corsair_pirate_elite",
	socialGroup = "canyon_corsair",
	pvpFaction = "canyon_corsair",
	faction = "canyon_corsair",
	level = 200,
	chanceHit = 1.2,
	damageMin = 555,
	damageMax = 820,
	baseXp = 50006,
	baseHAM = 58800,
	baseHAMmax = 80800,
	armor = 3,
	resists = {60,25,60,-1,60,-1,60,25,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_corsair_pirate_elite_hum_f.iff",
		"object/mobile/dressed_corsair_pirate_elite_hum_m.iff",
		"object/mobile/dressed_corsair_pirate_elite_nikto_m.iff",
		"object/mobile/dressed_corsair_pirate_elite_wee_m.iff",
		"object/mobile/dressed_corsair_pirate_elite_zab_m.iff"
		},
	
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 1600000},
				{group = "crystals_quality", chance = 1600000},
				{group = "clothing_attachments", chance = 1600000},
				{group = "armor_attachments", chance = 1600000},
				{group = "resource_deed", chance = 2000000},
				{group = "canyon_corsair_common", chance = 1600000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"canyon_corsair_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(event_canyon_corsair_elite_pirate, "event_canyon_corsair_elite_pirate")
