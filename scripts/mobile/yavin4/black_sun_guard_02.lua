black_sun_guard_02 = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_blksun_guard",
	customName = "Black Sun Sentry",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 96,
	chanceHit = 15.5,
	damageMin = 900,
	damageMax = 1050,
	baseXp = 25057,
	baseHAM = 36000,
	baseHAMmax = 40000,
	armor = 2,
	resists = {45,45,65,40,60,75,40,45,-1},
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
				{group = "junk", chance = 3500000},
				{group = "pistols", chance = 1750000},
				{group = "melee_blacksun_razor", chance = 750000},
				{group = "carbines", chance = 2750000},
				{group = "jetpack_parts", chance = 500000},				
				{group = "bounty_hunter_armor_looted", chance = 700000},
				{group = "jetpack_base", chance = 50000},
			},
			lootChance = 5500000
		}	
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(black_sun_guard_02, "black_sun_guard_02")
