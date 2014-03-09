event_death_watch_ghost = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_dthwatch_grey",
	customName = "Death Watch Ghost",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 200,
	chanceHit = 85,
	damageMin = 895,
	damageMax = 1500,
	baseXp = 0,
	baseHAM = 110000,
	baseHAMmax = 110000,
	armor = 2,
	resists = {65,65,70,60,35,35,100,50,5},
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.2,

	templates = {"object/mobile/dressed_death_watch_grey.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners",   chance = 1400000},
				{group = "death_watch_bunker_lieutenants", chance = 1400000},
				{group = "death_watch_bunker_ingredient_protective",  chance = 1400000},
				{group = "death_watch_bunker_ingredient_binary",  chance = 1400000},
				{group = "armor_attachments", chance = 1400000},
				{group = "resource_deed", chance = 1600000},
				{group = "clothing_attachments", chance = 1400000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = {
		{"defaultattack", ""},
		{"intimidationattack","intimidationChance=80"},
		{"knockdownattack","knockdownChance=70"}
	}
}

CreatureTemplates:addCreatureTemplate(event_death_watch_ghost, "event_death_watch_ghost")
