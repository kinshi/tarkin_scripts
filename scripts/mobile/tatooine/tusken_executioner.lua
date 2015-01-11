tusken_executioner = Creature:new {
	objectName = "@mob/creature_names:tusken_executioner",
	socialGroup = "tusken_raider",
	pvpFaction = "tusken_raider",
	faction = "tusken_raider",
	level = 263,
	chanceHit = 23.5,
	damageMin = 622,
	damageMax = 1100,
	baseXp = 25167,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 2,
	resists = {85,80,35,90,20,30,45,80,-1},
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

CreatureTemplates:addCreatureTemplate(tusken_executioner, "tusken_executioner")
