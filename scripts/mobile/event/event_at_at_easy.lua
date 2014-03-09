event_at_at_easy = Creature:new {
	objectName = "@mob/creature_names:at_at",
	customName = "an AT-AT (event)",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 250,
	chanceHit = 140,
	damageMin = 600,
	damageMax = 1100,
	baseXp = 50000,
	baseHAM = 108000,
	baseHAMmax = 154000,
	armor = 3,
	resists = {70,70,10,70,70,70,70,100,-1},
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

	templates = {"object/mobile/atat.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 3300000},
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000}
			},
			lootChance = 10000000
		}
	},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(event_at_at_easy, "event_at_at_easy")
