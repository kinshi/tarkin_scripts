event_hidden_daggers_leader = Creature:new {
	objectName = "@mob/creature_names:hidden_daggers_leader",
	socialGroup = "hidden_daggers",
	pvpFaction = "hidden_daggers",
	faction = "hidden_daggers",
	level = 180,
	chanceHit = 2.0,
	damageMin = 500,
	damageMax = 790,
	baseXp = 50426,
	baseHAM = 52900,
	baseHAMmax = 63500,
	armor = 2,
	resists = {35,55,15,80,-1,55,40,25,-1},
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

	templates = {
		"object/mobile/dressed_mugger.iff",
		"object/mobile/dressed_criminal_thug_human_female_01.iff",
		"object/mobile/dressed_criminal_thug_human_female_02.iff",
		"object/mobile/dressed_criminal_thug_human_male_01.iff",
		"object/mobile/dressed_criminal_thug_human_male_02.iff"},
	lootGroups = {
       	{
			groups = {
				{group = "hidden_dagger_common", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}	
	},
	weapons = {"ranged_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(event_hidden_daggers_leader, "event_hidden_daggers_leader")
