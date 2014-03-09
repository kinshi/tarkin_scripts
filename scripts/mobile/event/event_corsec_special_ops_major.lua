event_corsec_special_ops_major = Creature:new {
	objectName = "@mob/creature_names:corsec_major_aggro",
	socialGroup = "corsec",
	pvpFaction = "corsec",
	faction = "corsec",
	level = 250,
	chanceHit = 150,
	damageMin = 1045,
	damageMax = 1800,
	baseXp = 17178,
	baseHAM = 126000,
	baseHAMmax = 154000,
	armor = 3,
	resists = {65,65,30,40,80,30,40,35,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_corsec_captain_human_female_01.iff",
		"object/mobile/dressed_corsec_captain_human_male_01.iff"},
	lootGroups = {
	  {
			groups = {
                                {group = "clothing_attachments", chance = 1600000},
				{group = "armor_attachments", chance = 1600000},
				{group = "corsec_weapons", chance = 1600000},
				{group = "crystals_premium", chance = 1600000},
				{group = "resource_dead", chance = 2000000},
				{group = "color_crystals", chance = 1600000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"corsec_police_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(event_corsec_special_ops_major, "event_corsec_special_ops_major")
