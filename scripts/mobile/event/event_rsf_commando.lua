event_rsf_commando = Creature:new {
	objectName = "@mob/creature_names:rsf_commando",
	socialGroup = "naboo_security_force",
	pvpFaction = "naboo_security_force",
	faction = "naboo_security_force",
	level = 190,
	chanceHit = 1.5,
	damageMin = 330,
	damageMax = 590,
	baseXp = 50102,
	baseHAM = 32900,
	baseHAMmax = 53500,
	armor = 3,
	resists = {40,35,55,30,10,10,35,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rsf_commando.iff"},
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
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(event_rsf_commando, "event_rsf_commando")
