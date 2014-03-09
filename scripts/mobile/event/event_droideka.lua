event_droideka = Creature:new {
	objectName = "@mob/creature_names:droideka",
	customName = "a droideka (event)",
	socialGroup = "droideka",
	pvpFaction = "",
	faction = "",
	level = 160,
	chanceHit = 1,
	damageMin = 395,
	damageMax = 700,
	baseXp = 50000,
	baseHAM = 30700,
	baseHAMmax = 51900,
	armor = 2,
	resists = {30,30,30,0,30,-1,30,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE +ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.3,

	templates = {"object/mobile/droideka.iff"},
	lootGroups = {
         {
			groups = {
				{group = "geonosian_cubes", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
	    }	
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack",
}

CreatureTemplates:addCreatureTemplate(event_droideka, "event_droideka")
