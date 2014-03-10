event_donkuwah_battlelord = Creature:new {
	objectName = "@mob/creature_names:donkuwah_battlelord",
	socialGroup = "donkuwah_tribe",
	pvpFaction = "donkuwah_tribe",
	faction = "donkuwah_tribe",
	level = 140,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 500,
	baseXp = 52730,
	baseHAM = 27700,
	baseHAMmax = 59400,
	armor = 2,
	resists = {30,30,30,30,30,-1,30,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/dulok_male.iff"},
	lootGroups = {
		 {
	        groups = {
				{group = "donkuwah_common", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"donkuwah_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster)
}

CreatureTemplates:addCreatureTemplate(event_donkuwah_battlelord, "event_donkuwah_battlelord")
