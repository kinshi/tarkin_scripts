corsec_trooper = Creature:new {
	objectName = "@mob/creature_names:corsec_trooper",
	socialGroup = "corsec",
	pvpFaction = "corsec",
	faction = "corsec",
	level = 76,
	chanceHit = 0.85,
	damageMin = 470,
	damageMax = 750,
	baseXp = 8223,
	baseHAM = 10000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {45,45,30,40,80,30,40,35,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_corsec_officer_human_male_01.iff",
		"object/mobile/dressed_corsec_officer_human_female_01.iff",
		"object/mobile/dressed_corsec_pilot_human_male_01.iff",
		"object/mobile/dressed_corsec_pilot_human_female_01.iff"
		},
	lootGroups = {
	    {
			groups = {
				{group = "junk", chance = 4000000},
				{group = "wearables_common", chance = 2000000},
				{group = "corsec_weapons", chance = 2500000},
				{group = "tailor_components", chance = 1500000}
			},
			lootChance = 2000000
		}
	},
	weapons = {"corsec_police_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(corsec_trooper, "corsec_trooper")
