event_dark_jedi_sentinel = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_sentinel",
	customName = "a Dark Jedi Sentinel",
	socialGroup = "self",
	pvpFaction = "self",
	faction = "",
	level = 300,
	chanceHit = 35,
	damageMin = 1500,
	damageMax = 3000,
	baseXp = 100000,
	baseHAM = 80000,
	baseHAMmax = 91000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,25},
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
	creatureBitmask = PACK + HERD + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 1400000},
				{group = "holocron_splinters", chance = 1400000},
				{group = "holocron_light", chance = 1400000},
				{group = "crystals_premium", chance = 1400000},
				{group = "armor_attachments", chance = 1400000},
				{group = "resource_deed", chance = 1600000},
				{group = "clothing_attachments", chance = 1400000}				
			},
			lootChance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(event_dark_jedi_sentinel, "event_dark_jedi_sentinel")
