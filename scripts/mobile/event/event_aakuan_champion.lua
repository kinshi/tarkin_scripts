event_aakuan_champion = Creature:new {
	objectName = "@mob/creature_names:aakuan_champion",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 250,
	chanceHit = 2.0,
	damageMin = 500,
	damageMax = 900,
	baseXp = 50097,
	baseHAM = 100000,
	baseHAMmax = 150000,
	armor = 3,
	resists = {60,60,30,20,40,35,60,35,1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_aakuan_champion_zabrak_female_01.iff",
		"object/mobile/dressed_aakuan_champion_zabrak_male_01.iff"},
	lootGroups = {
	    {
		    groups = {
				{group = "clothing_attachments", chance = 3300000},
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000}			
			},
		    lootChance = 10000000
		}
	},
	weapons = {"aakuan_champion_weapons"},
	conversationTemplate = "",
	attacks = {
		{"defaultattack", ""},
		{"dizzyattack","dizzyChance=40"},
		{"knockdownattack","knockdownChance=40"}
	}
}

CreatureTemplates:addCreatureTemplate(event_aakuan_champion, "event_aakuan_champion")
