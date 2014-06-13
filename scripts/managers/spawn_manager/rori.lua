JUNKNOTSELLABLE = 0
JUNKGENERIC = 1
JUNKCLOTHESANDJEWELLERY = 2
JUNKWEAPONS = 4
JUNKARMOUR = 8
JUNKTUSKEN = 16
JUNKJEDI = 32
JUNKJAWA = 64
JUNKGUNGAN = 128

JUNKCONVGENERIC = 1
JUNKCONVARMS = 2
JUNKCONVFINARY = 3
JUNKCONVDENDERRORI = 4
JUNKCONVDENDERTHEED = 5
JUNKCONVLILABORVO = 6
JUNKCONVMALIKVISTAL = 7
JUNKCONVNADOWATTOS = 8
JUNKCONVNATHANTAIKE = 9
JUNKCONVOLLOBOJABBAS = 10
JUNKCONVQUICHDANTOOINE = 11
JUNKCONVREGGINYM = 12
JUNKCONVSHEANILAKE = 13
JUNKCONVSNEGVALARIAN = 14
JUNKCONVJAWAGENERIC = 15
JUNKCONVJAWAFINARY = 16
JUNKCONVJAWAARMS = 17
JUNKCONVJAWATUSKEN = 18

-- Generated by SWGEmu Spawn Tool v0.12
-- {"regionName", xCenter, yCenter, radius, tier, spawnConstant, "spawnGroup1", [...]}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a world spawn area and imperial spawn area in the same region, but
-- a dynamic rebel spawn area that is also a no build zone is possible.


UNDEFINEDAREA       = 0x0000
WORLDSPAWNAREA      = 0x0001
REBELSPAWNAREA      = 0x0002
IMPERIALSPAWNAREA   = 0x0004
NEUTRALSPAWNAREA    = 0x0008
STATICSPAWNAREA     = 0x0010
DYNAMICSPAWNAREA    = 0x0020
LAIRSPAWNAREA       = 0x0040
NOSPAWNAREA         = 0x0100
NOBUILDZONEAREA     = 0x1000

rori_regions = {
	{"a_rebel_outpost",3669,-6455,{1,200},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"asworal_everglades_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"asworal_everglades_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"asworal_everglades_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"asworal_everglades_4",0,0,{1,0},UNDEFINEDAREA,1},
	{"asworal_everglades_5",0,0,{1,0},UNDEFINEDAREA,1},
	{"asworal_everglades_6",0,0,{1,0},UNDEFINEDAREA,1},
        {"borgle_bat_cave",777,-4788,{1,200},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"camp_and_BH",-3650,5530,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"camp_and_skeleton",-2641,-3209,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"central_islands_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"central_islands_2",0,0,{1,0},UNDEFINEDAREA,1},
        {"cobral_tent",-4970,-667,{1,30},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"debris",-990,-315,{1,30},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"eastern_islands_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"eastern_islands_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"eastern_mountains",0,0,{1,0},UNDEFINEDAREA,1},
	{"eastern_mountains_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"eastern_mountains_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"eastern_mountains_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"eastern_peak",0,0,{1,0},UNDEFINEDAREA,1},
	{"easy_fuzzy_jax_se",0,0,{1,0},UNDEFINEDAREA,1},
	{"easy_ikopi_se",0,0,{1,0},UNDEFINEDAREA,1},
	{"easy_ikopi_sw",0,0,{1,0},UNDEFINEDAREA,1},
        {"four_columns",-430,3265,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"giant_bark_mite_cave",3629,5541,{1,100},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"graveyard",-1700,6145,{1,30},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"hard_capper_spineflap_ne",0,0,{1,0},UNDEFINEDAREA,1},
	{"hard_capper_spineflap_nw",0,0,{1,0},UNDEFINEDAREA,1},
	{"hard_capper_spineflap_sw",0,0,{1,0},UNDEFINEDAREA,1},
	{"hard_mauler_ne",0,0,{1,0},UNDEFINEDAREA,1},
	{"hard_mauler_sw",0,0,{1,0},UNDEFINEDAREA,1},
	{"hard_rogungan_nw",0,0,{1,0},UNDEFINEDAREA,1},
	{"hard_rogungan_se",0,0,{1,0},UNDEFINEDAREA,1},
        {"hyperdrive_research_facility",-1144,4548,{1,200},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"imperial_outpost",6543,-4752,{1,150},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"jungle_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"jungle_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"jungle_3",0,0,{1,0},UNDEFINEDAREA,1},
        {"kobola_bunker",7380,247,{1,150},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"lake_octir_swamp",0,0,{1,0},UNDEFINEDAREA,1},
	{"madyn_plains_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"madyn_plains_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"madyn_plains_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"medium_tusk_cat_ne",0,0,{1,0},UNDEFINEDAREA,1},
        {"militia_commanders_estate",5211,1017,{1,75},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"monster_island",0,0,{1,0},UNDEFINEDAREA,1},
	{"mud_beach_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"mud_beach_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"mud_beach_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"mud_beach_4",0,0,{1,0},UNDEFINEDAREA,1},
	{"mud_beach_5",0,0,{1,0},UNDEFINEDAREA,1},
	{"mud_beach_6",0,0,{1,0},UNDEFINEDAREA,1},
	{"mud_beach_7",0,0,{1,0},UNDEFINEDAREA,1},
	{"mud_beach_8",0,0,{1,0},UNDEFINEDAREA,1},
	{"mud_beach_9",0,0,{1,0},UNDEFINEDAREA,1},
	{"mudflats_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"mudflats_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"mudflats_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"mudflats_4",0,0,{1,0},UNDEFINEDAREA,1},
	{"mudflats_5",0,0,{1,0},UNDEFINEDAREA,1},
	{"mudflats_6",0,0,{1,0},UNDEFINEDAREA,1},
	{"mudflats_7",0,0,{1,0},UNDEFINEDAREA,1},
	{"mudflats_8",0,0,{1,0},UNDEFINEDAREA,1},
        {"mysterious_shrine",-6374,6400,{1,30},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"mysterious_shrine_2",-4495,-7535,{1,30},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"narlis_fens_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"narlis_fens_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"narmle",0,0,{1,0},UNDEFINEDAREA,1},
	{"narmle_easy_newbie",-5205,-2290,{1,1800},LAIRSPAWNAREA + WORLDSPAWNAREA,1,"rori_starter_creatures"},
	{"narmle_medium_newbie",-5200,-2290,{3,1600,2600},LAIRSPAWNAREA + WORLDSPAWNAREA,1,"rori_medium_creatures"},
        {"narmle_spike",-3389,-2096,{1,30},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"northeast_mountains",0,0,{1,0},UNDEFINEDAREA,1},
	{"northern_islands_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"northern_islands_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"northern_islands_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"northern_peak",0,0,{1,0},UNDEFINEDAREA,1},
	{"northwest_mountains",0,0,{1,0},UNDEFINEDAREA,1},
	{"northwest_peak",0,0,{1,0},UNDEFINEDAREA,1},
	{"plains_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"plains_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"plains_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"plains_4",0,0,{1,0},UNDEFINEDAREA,1},
	{"plains_5",0,0,{1,0},UNDEFINEDAREA,1},
	{"plains_6",0,0,{1,0},UNDEFINEDAREA,1},
        {"pygmy_torton_cave",-1986,-4584,{1,150},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"race_coordinator",4199,5286,{1,60},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"rancher_and_pets",-430,-5437,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"rebel_outpost",3677,-6447,{1,2000},LAIRSPAWNAREA + WORLDSPAWNAREA,1,"rori_medium_creatures"},
	{"restuss",0,0,{1,0},UNDEFINEDAREA,1},
	{"restuss_easy_newbie",5300,5700,{1,1800},LAIRSPAWNAREA + WORLDSPAWNAREA,1,"rori_starter_creatures"},
	{"restuss_medium_newbie",5305,5700,{3,1600,2600},LAIRSPAWNAREA + WORLDSPAWNAREA,1,"rori_medium_creatures"},
        {"rori_gungan_swamp_town",-2073,3315,{1,200},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"rorgungan_ruins",-5826,5826,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"rorgungan_ruins_2",-6964,-5637,{1,75},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"rorgungan_ruins_3",-1490,1675,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"rorgungan_ruins_4",-2650,-780,{1,75},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"rorgungan_ruins_5",-75,5230,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"rorgungan_ruins_6",6689,6879,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"rori_imperial_encampment",-5565,-5661,{1,200},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"rori_rebel_encampment",-5320,5000,{1,150},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"sdungeon_rebel_outpost",0,0,{1,0},UNDEFINEDAREA,1},
        {"shield_generator",-5500,2100,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"southeast_jungle_peak",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_forest_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_forest_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_forest_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_forest_4",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_forest_5",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_forest_6",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_forest_7",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_jungle_mountains",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mountains_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mountains_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mountains_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mountains_4",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mud_flats_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mud_flats_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mud_flats_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mud_flats_4",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mud_flats_5",0,0,{1,0},UNDEFINEDAREA,1},
	{"southern_mud_flats_6",0,0,{1,0},UNDEFINEDAREA,1},
	{"southwest_jungle_peak",0,0,{1,0},UNDEFINEDAREA,1},
        {"statue",-2900,2587,{1,35},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"swamp_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"swamp_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"swamp_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"swamp_4",0,0,{1,0},UNDEFINEDAREA,1},
	{"swamp_5",0,0,{1,0},UNDEFINEDAREA,1},
	{"swamp_general_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"swamp_general_2",0,0,{1,0},UNDEFINEDAREA,1},
        {"tower",-4850,-4250,{1,30},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"vaydean_marsh",0,0,{1,0},UNDEFINEDAREA,1},
	{"western_islands_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"western_islands_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"western_mountains",0,0,{1,0},UNDEFINEDAREA,1},
	{"western_mountains_1",0,0,{1,0},UNDEFINEDAREA,1},
	{"western_mountains_2",0,0,{1,0},UNDEFINEDAREA,1},
	{"western_mountains_3",0,0,{1,0},UNDEFINEDAREA,1},
	{"western_mountains_4",0,0,{1,0},UNDEFINEDAREA,1},
	{"western_peak",0,0,{1,0},UNDEFINEDAREA,1},
	{"world_spawner",0,0,{1,-1},LAIRSPAWNAREA + WORLDSPAWNAREA,1,"rori_world_creatures"},
        {"wrecked_outpost",5085,4674,{1,50},STATICSPAWNAREA + NOSPAWNAREA + NOBUILDZONEAREA,1},
}

rori_static_spawns = {

	--Rebel Outpost
	{"vordin_sildor", 60, 4.2, 0.1, 0.8, 196, 4505667, "npc_sitting_chair", ""},
	{"entertainer", 360, 10, 0, 3.6, 270, 4505634, "happy", ""},
	{"commoner", 360, 3.7, 0.6, 0.7, 90, 4505634, "npc_sitting_chair", ""},
	{"patron", 360, 6.1, 0.6, 0.7, 270, 4505634, "npc_sitting_chair",""},
	{"patron", 360, 1.8, 0.6, 1.8, 69, 4505634, "npc_standing_drinking", ""},
	{"businessman", 60, 3702.3, 96, -6439.5, 330, 0, "bored", ""},
	{"businessman", 60, 3645.7, 96, -6439, 80, 0, "happy", ""},
	{"noble", 60, 3640.8, 96, -6439.1, 71, 0, "npc_sitting_chair", ""},
	{"commoner", 60, 3702.6, 96, -6434.3, 94, 0, "npc_use_terminal_high", ""},
	{"junk_dender",60,-5428.2,80,-2244.2,10,0, "", "Dender",JUNKGUNGAN,JUNKCONVDENDERRORI},
}

rori_badges = {
	{"badge_imp_camp",-5633,-5661,10,96},
	{"badge_imp_hyperdrive_fac",-1130,4544,10,97},
	{"badge_kobala_spice_mine",7304,63,10,94},
	{"badge_rebel_outpost",3664,-6501,10,95}
}
