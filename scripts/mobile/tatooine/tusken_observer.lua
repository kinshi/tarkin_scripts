tusken_observer = Creature:new {
	objectName = "@mob/creature_names:tusken_observer",
	socialGroup = "tusken_raider",
	pvpFaction = "tusken_raider",
	faction = "tusken_raider",
	level = 227,
	chanceHit = 19.75,
	damageMin = 622,
	damageMax = 1100,
	baseXp = 21630,
	baseHAM = 150000,
	baseHAMmax = 150000,
	armor = 3,
	resists = {85,85,35,90,10,30,45,80,-1},
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
				{group = "tusken_common", chance = 3000000},
				{group = "bone_armor", chance = 500000},
				{group = "chitin_armor", chance = 500000},
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "crystals_premium", chance = 3000000},
				{group = "nge_house_sand_crawler", chance = 500000},
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3000000},
				{group = "deed_voucher", chance = 500000}
			},
			lootChance = 5000000
		},				
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_observer, "tusken_observer")
