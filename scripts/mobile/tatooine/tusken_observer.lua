tusken_observer = Creature:new {
	objectName = "@mob/creature_names:tusken_observer",
	socialGroup = "tusken_raider",
	pvpFaction = "tusken_raider",
	faction = "tusken_raider",
	level = 227,
	chanceHit = 11.75,
	damageMin = 522,
	damageMax = 700,
	baseXp = 21630,
	baseHAM = 150000,
	baseHAMmax = 150000,
	armor = 2,
	resists = {75,75,35,80,10,30,35,70,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tusken_common", chance = 5000000},
				{group = "bone_armor", chance = 2500000},
				{group = "chitin_armor", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}			
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "crystals_premium", chance = 5000000},
				{group = "nge_house_sand_crawler", chance = 2500000},
				{group = "deed_voucher", chance = 2500000}
			},
			lootChance = 2500000
		},				
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_observer, "tusken_observer")
