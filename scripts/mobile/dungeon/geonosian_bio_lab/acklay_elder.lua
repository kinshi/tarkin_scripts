acklay_elder = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Elder Acklay",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 180,
	chanceHit = 92.5,
	damageMin = 1600,
	damageMax = 2800,
	baseXp = 24884,
	baseHAM = 270000,
	baseHAMmax = 398000,
	armor = 3,
	resists = {130,145,155,155,145,30,30,30,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 35,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	Scale = 1.3,

	templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "deed_voucher", chance = 1000000},
				{group = "clothing_attachment", chance = 4500000},
				{group = "armor_attachment", chance = 4500000}
			},
			lootChance = 5000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareaknockdown","knockdownChance=50"},
		{"dizzyattack","dizzyChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(acklay_elder, "acklay_elder")
