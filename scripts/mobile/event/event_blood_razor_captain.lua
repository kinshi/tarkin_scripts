event_blood_razor_captain = Creature:new {
	objectName = "@mob/creature_names:blood_razor_captain",
	socialGroup = "bloodrazor",
	pvpFaction = "bloodrazor",
	faction = "bloodrazor",
	level = 250,
	chanceHit = 2.0,
	damageMin = 590,
	damageMax = 1340,
	baseXp = 53642,
	baseHAM = 88300,
	baseHAMmax = 110100,
	armor = 3,
	resists = {60,-1,15,15,60,15,15,60,-1},
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
	scale = 1.5,

	templates = {
		"object/mobile/dressed_blood_razor_pirate_captain_hum_m.iff",
		"object/mobile/dressed_blood_razor_pirate_captain_nikto_m.iff",
		"object/mobile/dressed_blood_razor_pirate_captain_wee_m.iff"
		},

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 1600000},
				{group = "crystals_quality", chance = 1600000},
				{group = "clothing_attachments", chance = 1600000},
				{group = "armor_attachments", chance = 1600000},
				{group = "bloodrazor_common", chance = 1600000},
				{group = "resource_deed", chance = 2000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(event_blood_razor_captain, "event_blood_razor_captain")
