event_dark_jedi_knight = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_knight",
	customName = "a Dark Jedi Knight",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 180,
	chanceHit = 25,
	damageMin = 900,
	damageMax = 1400,
	baseXp = 50000,
	baseHAM = 60000,
	baseHAMmax = 71000,
	armor = 2,
	resists = {70,70,70,70,70,70,70,70,20},
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
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(event_dark_jedi_knight, "event_dark_jedi_knight")
