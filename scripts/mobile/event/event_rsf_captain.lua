event_rsf_captain = Creature:new {
	objectName = "@mob/creature_names:rsf_captain",
	socialGroup = "naboo_security_force",
	pvpFaction = "naboo_security_force",
	faction = "naboo_security_force",
	level = 150,
	chanceHit = 1.5,
	damageMin = 330,
	damageMax = 590,
	baseXp = 50102,
	baseHAM = 32900,
	baseHAMmax = 53500,
	armor = 3,
	resists = {30,25,45,20,-1,-1,25,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rsf_captain.iff"},
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
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(event_rsf_captain, "event_rsf_captain")
