event_dark_jedi_master = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_master",
	customName = "a Dark Jedi Master",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 240,
	chanceHit = 25,
	damageMin = 1100,
	damageMax = 2000,
	baseXp = 50000,
	baseHAM = 70000,
	baseHAMmax = 81000,
	armor = 2,
	resists = {75,75,75,75,75,75,75,75,20},
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
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(event_dark_jedi_master, "event_dark_jedi_master")
