bh_dark_jedi_knight = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_knight",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 165,
	chanceHit = 165,
	damageMin = 900,
	damageMax = 1345,
	baseXp = 25266,
	baseHAM = 121000,
	baseHAMmax = 210000,
	armor = 2,
	resists = {70,70,50,70,70,70,70,55,55},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nightsister_rare", chance = 1000000},
				{group = "crystals_premium", chance = 600000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "bounty_hunter_schemes", chance = 1500000},
				{group = "armor_attachments", chance = 1700000},
				{group = "clothing_attachments", chance = 1700000},
				{group = "carbines", chance = 1500000}			
			},
			lootChance = 3000000
		}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(bh_dark_jedi_knight, "bh_dark_jedi_knight")
