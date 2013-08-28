dofile("scripts/managers/mission_npc_spawn_points.lua");

crafting_mission_items = {
	"object/draft_schematic/item/quest_item/attunement_grid.iff",
	"object/draft_schematic/item/quest_item/current_alternator.iff",
	"object/draft_schematic/item/quest_item/feedback_controller.iff",
	"object/draft_schematic/item/quest_item/output_governor.iff",
	"object/draft_schematic/item/quest_item/power_regulator.iff"
}

bh_target_zones = {
	"corellia",
	"dantooine",
	"dathomir",
	"lok",
	"naboo",
	"rori",
	"talus",
	"tatooine",
	"yavin4",
	"endor"
}

bh_targets_at_mission_level = {
	level1 = {
		"bodyguard",
		"bodyguard_zabrak_female",
		"assassin_twilek_mate",
		"pirate_privateer",
		"naboo_pirate_lieutenant"
	},
	level2 = {
		"bh_dune_stalker_brawler",
		"bh_canyon_corsair_cutthroat",
		"bh_pirate_leader",
		"bh_sennex_guard"
	},
	level3 = {
		"bh_canyon_corsair_captain",
		"bh_untrained_wielder_of_the_dark_side",
		"bh_force_trained_archaist",
		"bh_feral_force_wielder",
		"bh_dark_jedi_knight"
		--"bh_dark_jedi_master
	}
}

enable_factional_crafting_missions = "true"

enable_factional_recon_missions = "true"

enable_factional_entertainer_missions = "true"
