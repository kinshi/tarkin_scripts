black_sun_guard = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_blksun_guard",
	socialGroup = "death_watch",
	pvpFaction = "",
	faction = "",
	level = 96,
	chanceHit = 0.95,
	damageMin = 620,
	damageMax = 950,
	baseXp = 9057,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 2,
	resists = {40,40,60,35,55,70,35,40,55},
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
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
	lootGroups = {
		{
			groups = {
				{group = "pistols", chance = 3333333},
				{group = "rifles", chance = 3333333},
				{group = "carbines", chance = 3333334},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 5000000
		},	
		{
			groups = {
				{group = "jetpack_parts", chance = 1000000},				
				{group = "bounty_hunter_armor", chance = 3250000},
				{group = "nge_house_commando", chance = 1500000},
				{group = "jetpack_base", chance = 500000}
			},
			lootChance = 2500000
		},
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(black_sun_guard, "black_sun_guard")
