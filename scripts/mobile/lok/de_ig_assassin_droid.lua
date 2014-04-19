de_ig_assassin_droid = Creature:new {
	objectName = "@mob/creature_names:ig_assassin_droid",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 90,
	chanceHit = 1,
	damageMin = 280,
	damageMax = 450,
	baseXp = 10461,
	baseHAM = 25700,
	baseHAMmax = 35900,
	armor = 1,
	resists = {25,25,5,5,5,5,5,-1,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = 0,
	diet = NONE,

	templates = {"object/mobile/ig_assassin_droid.iff"},
	lootGroups = {
			groups = {
			{
				{group = "droid_loot", chance = 1750000},
				{group = "nyms_common", chance = 2250000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "nge_house_mustafar", chance = 1000000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "armor_attachments", chance = 1500000}
			},
			lootChance = 2500000
		},
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(de_ig_assassin_droid, "de_ig_assassin_droid")
