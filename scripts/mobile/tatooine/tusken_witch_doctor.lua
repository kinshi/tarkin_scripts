tusken_witch_doctor = Creature:new {
	objectName = "@mob/creature_names:tusken_witch_doctor",
	socialGroup = "tusken_raider",
	pvpFaction = "tusken_raider",
	faction = "tusken_raider",
	level = 202,
	chanceHit = 16,
	damageMin = 622,
	damageMax = 1100,
	baseXp = 19201,
	baseHAM = 160000,
	baseHAMmax = 195000,
	armor = 2,
	resists = {65,90,35,90,0,30,45,80,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
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
	attacks = merge(brawlernovice,marksmannovice,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_witch_doctor, "tusken_witch_doctor")
