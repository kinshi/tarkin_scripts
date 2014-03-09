event_at_at = Creature:new {
	objectName = "@mob/creature_names:at_at",
	customName = "an AT-AT",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 190,
	damageMin = 1270,
	damageMax = 2250,
	baseXp = 50000,
	baseHAM = 208000,
	baseHAMmax = 254000,
	armor = 3,
	resists = {90,90,10,90,90,90,90,100,-1},
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
CreatureTemplates:addCreatureTemplate(event_at_at, "event_at_at")
