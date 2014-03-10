event_dark_adept = Creature:new {
	objectName = "@mob/creature_names:dark_adept",
	customName = "a Dark Adept",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 140,
	chanceHit = 25,
	damageMin = 700,
	damageMax = 1000,
	baseXp = 50000,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 2,
	resists = {65,65,65,65,65,65,65,65,20},
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

	templates = {"object/mobile/dressed_dark_jedi_human_male_01.iff"},
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
	weapons = {"dark_jedi_weapons_gen2"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(event_dark_adept, "event_dark_adept")
