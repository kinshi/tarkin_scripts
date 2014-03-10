event_janta_clan_leader = Creature:new {
	objectName = "@mob/creature_names:janta_clan_leader",
	socialGroup = "janta_tribe",
	pvpFaction = "janta_tribe",
	faction = "janta_tribe",
	level = 200,
	chanceHit = 2.5,
	damageMin = 700,
	damageMax = 1000,
	baseXp = 50207,
	baseHAM = 62000,
	baseHAMmax = 95000,
	armor = 3,
	resists = {30,60,-1,30,30,100,30,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/dantari_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "janta_common", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}	
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(event_janta_clan_leader, "event_janta_clan_leader")
