event_at_st = Creature:new {
	objectName = "@mob/creature_names:at_st",
	customName = "an AT-ST",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 250,
	chanceHit = 570,
	damageMin = 1001,
	damageMax = 1625,
	baseXp = 15417,
	baseHAM = 75000,
	baseHAMmax = 99000,
	armor = 3,
	resists = {46,46,10,100,100,20,20,100,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = NONE,

	templates = {"object/mobile/atst.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 3300000},
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3300000}
			},
			lootChance = 10000000
		}
	},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(event_at_st, "event_at_st")
