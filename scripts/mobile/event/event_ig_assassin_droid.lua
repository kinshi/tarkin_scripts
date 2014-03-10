event_ig_assassin_droid = Creature:new {
	objectName = "@mob/creature_names:ig_assassin_droid",
	customName = "an IG assassin droid",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 145,
	chanceHit = 2,
	damageMin = 395,
	damageMax = 500,
	baseXp = 50000,
	baseHAM = 69700,
	baseHAMmax = 111900,
	armor = 3,
	resists = {45,45,15,15,15,15,15,-1,-1},
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
	scale = 1.5,

	templates = {"object/mobile/ig_assassin_droid.iff"},
	lootGroups = {
       	{
			groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000},
				{group = "clothing_attachments", chance = 3300000}
			},
			lootChance = 10000000
		}	
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(event_ig_assassin_droid, "event_ig_assassin_droid")
