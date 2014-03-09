event_queen_merek_harvester = Creature:new {
	objectName = "",
	customName = "Enhanced Merek Queen",
	socialGroup = "merek",
	pvpFaction = "",
	faction = "",
	level = 250,
	chanceHit = 5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 50825,
	baseHAM = 60000,
	baseHAMmax = 102000,
	armor = 2,
	resists = {60,20,5,100,50,5,50,5,-1},
	meatType = "meat_wild",
	meatAmount = 750,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 2.5,

	templates = {"object/mobile/queen_merek_harvester.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "clothing_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"knockdownattack","knockdownChance=75"}
	}
}

CreatureTemplates:addCreatureTemplate(event_queen_merek_harvester, "event_queen_merek_harvester")
