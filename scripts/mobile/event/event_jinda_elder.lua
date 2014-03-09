event_jinda_elder = Creature:new {
	objectName = "@mob/creature_names:jinda_elder",
	socialGroup = "jinda_tribe",
	pvpFaction = "jinda_tribe",
	faction = "",
	level = 200,
	chanceHit = 2.5,
	damageMin = 700,
	damageMax = 1000,
	baseXp = 50207,
	baseHAM = 62000,
	baseHAMmax = 95000,
	armor = 3,
	resists = {30,60,-1,30,30,100,30,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {
			"object/mobile/jinda_male.iff",
			"object/mobile/jinda_male_01.iff",
			"object/mobile/jinda_female.iff",
			"object/mobile/jinda_female_01.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "ewok", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"ewok_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(event_jinda_elder, "event_jinda_elder")
