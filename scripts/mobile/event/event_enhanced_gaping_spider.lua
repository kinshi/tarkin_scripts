event_enhanced_gaping_spider = Creature:new {
	objectName = "@mob/creature_names:geonosian_gaping_spider_fire",
	customName = "Mutated Fire Breathing Spider",
	socialGroup = "geonosian_creature",
	pvpFaction = "geonosian_creature",
	faction = "",
	level = 300,
	chanceHit = 5,
	damageMin = 900,
	damageMax = 1400,
	baseXp = 50000,
	baseHAM = 60000,
	baseHAMmax = 109000,
	armor = 2,
	resists = {60,20,-1,95,-1,30,30,30,-1},
	meatType = "meat_insect",
	meatAmount = 2000,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider.iff"},
	scale = 4.0,
	lootGroups = {
		{
			groups = {
				{group = "fire_breathing_spider", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}	
	},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"stunattack","stunChance=80"}
	}
}

CreatureTemplates:addCreatureTemplate(event_enhanced_gaping_spider, "event_enhanced_gaping_spider")
