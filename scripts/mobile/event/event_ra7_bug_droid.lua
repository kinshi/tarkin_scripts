event_ra7_bug_droid = Creature:new {
	objectName = "@mob/creature_names:ra7_bug_droid",
	customName = "an RA-7 \"Bug\" droid",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 200,
	chanceHit = 2,
	damageMin = 500,
	damageMax = 1300,
	baseXp = 50000,
	baseHAM = 35000,
	baseHAMmax = 56100,
	armor = 2,
	resists = {45,30,40,20,20,5,60,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/ra7_bug_droid.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "clothing_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	attacks = {"creatureareableeding",""}
}

CreatureTemplates:addCreatureTemplate(event_ra7_bug_droid, "event_ra7_bug_droid")
