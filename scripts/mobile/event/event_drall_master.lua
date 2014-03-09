event_drall_master = Creature:new {
	objectName = "@mob/creature_names:drall_master",
	socialGroup = "drall",
	pvpFaction = "drall",
	faction = "drall",
	level = 150,
	chanceHit = 1,
	damageMin = 320,
	damageMax = 500,
	baseXp = 50257,
	baseHAM = 44100,
	baseHAMmax = 55000,
	armor = 3,
	resists = {15,15,-1,70,70,15,25,-1,-1},
	meatType = "",
	meatAmount = "",
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/drall_male.iff",
		"object/mobile/drall_female.iff"},
	lootGroups = {
		 {
	        groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000},
				{group = "clothing_attachments", chance = 3300000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(event_drall_master, "event_drall_master")
