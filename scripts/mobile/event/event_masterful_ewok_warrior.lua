event_masterful_ewok_warrior = Creature:new {
	objectName = "@mob/creature_names:masterful_ewok_warrior",
	socialGroup = "gondula_tribe",
	pvpFaction = "gondula_tribe",
	faction = "gondula_tribe",
	level = 150,
	chanceHit = 1,
	damageMin = 250,
	damageMax = 500,
	baseXp = 50514,
	baseHAM = 40810,
	baseHAMmax = 59990,
	armor = 2,
	resists = {35,35,15,45,45,-1,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 10,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {
		"object/mobile/dressed_ewok_m_06.iff",
		"object/mobile/dressed_ewok_m_08.iff"},
	lootGroups = {
		 {
	        groups = {
				{group = "ewok", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"ewok_weapons"},
	attacks = merge(riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(event_masterful_ewok_warrior, "event_masterful_ewok_warrior")
