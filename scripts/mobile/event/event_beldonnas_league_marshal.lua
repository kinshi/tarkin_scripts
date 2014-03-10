event_beldonnas_league_marshal = Creature:new {
	objectName = "@mob/creature_names:beldonnas_marshal",
	socialGroup = "beldonnas_league",
	pvpFaction = "beldonnas_league",
	faction = "beldonnas_league",
	level = 200,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 660,
	baseXp = 50730,
	baseHAM = 47700,
	baseHAMmax = 69400,
	armor = 3,
	resists = {25,25,25,25,50,50,50,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_goon_twk_female_01.iff",
		"object/mobile/dressed_goon_twk_male_01.iff",
		"object/mobile/dressed_gran_thug_male_01.iff",
		"object/mobile/dressed_gran_thug_male_02.iff",
		"object/mobile/dressed_crook_zabrak_female_01.iff",
		"object/mobile/dressed_crook_zabrak_male_01.iff",
		"object/mobile/dressed_desperado_bith_female_01.iff",
		"object/mobile/dressed_desperado_bith_male_01.iff",
		"object/mobile/dressed_hoodlum_zabrak_female_01.iff",
		"object/mobile/dressed_hoodlum_zabrak_male_01.iff",
		"object/mobile/dressed_hooligan_rodian_female_01.iff",
		"object/mobile/dressed_hooligan_rodian_male_01.iff",
		"object/mobile/dressed_ravager_human_female_01.iff",
		"object/mobile/dressed_ravager_human_male_01.iff",
		"object/mobile/dressed_raider_trandoshan_female_01.iff",
		"object/mobile/dressed_raider_trandoshan_male_01.iff"},
	lootGroups = {
       	{
			groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3300000},
				{group = "clothing_attachments", chance = 34000000},
				{group = "beldonnas_common", chance = 2000000}
			},
			lootChance = 3000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(event_beldonnas_league_marshal, "event_beldonnas_league_marshal")
