--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 
--
--NOTES ABOUT CHARACTER BUILDER TERMINAL ITEM LIST FORMAT
---------------------------------------------------------
--The item list is an infinitely deep node tree system.
--To create a sub menu, use the following format:
--"Name of the sub menu", {Menu items contained in brackets}
--To create an item that is selectable, use the following format (within brackets of a submenu):
--"Name of the item", "Path to the server or client template."
--Be sure to pay attention to commas.

object_tangible_terminal_terminal_character_builder = object_tangible_terminal_shared_terminal_character_builder:new {
	gameObjectType = 16400,
			
	maxCondition = 0,

	templateType = CHARACTERBUILDERTERMINAL,

	itemList = {
		"Character Options",
		{
			"Learn Skill",
			{
				"Architect",
				{
					"Novice", "crafting_architect_novice",
					"Furniture",
					{
						"Furniture I", "crafting_architect_production_01",
						"Furniture II", "crafting_architect_production_02",
						"Furniture III", "crafting_architect_production_03",
						"Furniture IV", "crafting_architect_production_04"
					},
					"Construction",
					{
						"Construction I", "crafting_architect_techniques_01",
						"Construction II", "crafting_architect_techniques_02",
						"Construction III", "crafting_architect_techniques_03",
						"Construction IV", "crafting_architect_techniques_04"
					},
					"Installations",
					{
						"Installations I", "crafting_architect_harvesting_01",
						"Installations II", "crafting_architect_harvesting_02",
						"Installations III", "crafting_architect_harvesting_03",
						"Installations IV", "crafting_architect_harvesting_04"
					},
					"Buildings",
					{
						"Buildings I", "crafting_architect_blueprints_01",
						"Buildings II", "crafting_architect_blueprints_02",
						"Buildings III", "crafting_architect_blueprints_03",
						"Buildings IV", "crafting_architect_blueprints_04"
					},
					"Master", "crafting_architect_master"
				},
				"Armorsmith",
				{
					"Novice", "crafting_armorsmith_novice",
					"Personal Armor",
					{
						"Personal Armor I", "crafting_armorsmith_personal_01",
						"Personal Armor II", "crafting_armorsmith_personal_02",
						"Personal Armor III", "crafting_armorsmith_personal_03",
						"Personal Armor IV", "crafting_armorsmith_personal_04"
					},
					"Layers",
					{
						"Layers I", "crafting_armorsmith_heavy_01",
						"Layers II", "crafting_armorsmith_heavy_02",
						"Layers III", "crafting_armorsmith_heavy_03",
						"Layers IV", "crafting_armorsmith_heavy_04"
					},
					"Deflectors",
					{
						"Deflectors I", "crafting_armorsmith_deflectors_01",
						"Deflectors II", "crafting_armorsmith_deflectors_02",
						"Deflectors III", "crafting_armorsmith_deflectors_03",
						"Deflectors IV", "crafting_armorsmith_deflectors_04"
					},
					"Technique",
					{
						"Technique I", "crafting_armorsmith_complexity_01",
						"Technique II", "crafting_armorsmith_complexity_02",
						"Technique III", "crafting_armorsmith_complexity_03",
						"Technique IV", "crafting_armorsmith_complexity_04"
					},
					"Master", "crafting_armorsmith_master"
				},
				"Artisan",
				{
					"Novice", "crafting_artisan_novice",
					"Engineering",
					{
						"Engineering I", "crafting_artisan_engineering_01",
						"Engineering II", "crafting_artisan_engineering_02",
						"Engineering III", "crafting_artisan_engineering_03",
						"Engineering IV", "crafting_artisan_engineering_04"
					},
					"Domestic Arts",
					{
						"Domestic Arts I", "crafting_artisan_domestic_01",
						"Domestic Arts II", "crafting_artisan_domestic_02",
						"Domestic Arts III", "crafting_artisan_domestic_03",
						"Domestic Arts IV", "crafting_artisan_domestic_04"
					},
					"Business",
					{
						"Business I", "crafting_artisan_business_01",
						"Business II", "crafting_artisan_business_02",
						"Business III", "crafting_artisan_business_03",
						"Business IV", "crafting_artisan_business_04"
					},
					"Surveying",
					{
						"Surveying I", "crafting_artisan_survey_01",
						"Surveying II", "crafting_artisan_survey_02",
						"Surveying III", "crafting_artisan_survey_03",
						"Surveying IV", "crafting_artisan_survey_04"
					},
					"Master", "crafting_artisan_master"
				},
--				"Bio-Engineer",
--				{
--					"Novice", "outdoors_bio_engineer_novice",
--
--					"Engineering Techniques",
--					{
--						"Engineering Techniques I", "outdoors_bio_engineer_production_01",
--						"Engineering Techniques II", "outdoors_bio_engineer_production_02",
--						"Engineering Techniques III", "outdoors_bio_engineer_production_03",
--						"Engineering Techniques IV", "outdoors_bio_engineer_production_04"
--					},
--					--"Master", "outdoors_bio_engineer_master"
--				},
--				"Brawler",
--				{
--					"Novice", "combat_brawler_novice",
--					"Unarmed",
--					{
--						"Unarmed I", "combat_brawler_unarmed_01",
--						"Unarmed II", "combat_brawler_unarmed_02",
--						"Unarmed III", "combat_brawler_unarmed_03",
--						"Unarmed IV", "combat_brawler_unarmed_04"
--					},	
--					"Fencer",
--					{
--						"One Handed I", "combat_brawler_1handmelee_01",
--						"One Handed II", "combat_brawler_1handmelee_02",
--						"One Handed III", "combat_brawler_1handmelee_03",
--						"One Handed IV", "combat_brawler_1handmelee_04"
--					},
--					"Swordsman",
--					{
--						"Two Handed I", "combat_brawler_2handmelee_01",
--						"Two Handed II", "combat_brawler_2handmelee_02",
--						"Two Handed III", "combat_brawler_2handmelee_03",
--						"Two Handed IV", "combat_brawler_2handmelee_04"
--					},
--					"Pikeman",
--					{
--						"Polearms I", "combat_brawler_polearm_01",
--						"Polearms II", "combat_brawler_polearm_02",
--						"Polearms III", "combat_brawler_polearm_03",
--						"Polearms IV", "combat_brawler_polearm_04"
--					},
--					--"Master", "combat_brawler_master"
--				},
				"Chef",
				{
					"Novice", "crafting_chef_novice",
					"Entrees",
					{
						"Entrees I", "crafting_chef_dish_01",
						"Entrees II", "crafting_chef_dish_02",
						"Entrees III", "crafting_chef_dish_03",
						"Entrees IV", "crafting_chef_dish_04"
					},
					"Desserts",
					{
						"Desserts I", "crafting_chef_dessert_01",
						"Desserts II", "crafting_chef_dessert_02",
						"Desserts III", "crafting_chef_dessert_03",
						"Desserts IV", "crafting_chef_dessert_04"
					},
					"Mixology",
					{
						"Mixology I", "crafting_chef_drink_01",
						"Mixology II", "crafting_chef_drink_02",
						"Mixology III", "crafting_chef_drink_03",
						"Mixology IV", "crafting_chef_drink_04"
					},
					"Cooking",
					{
						"Cooking I", "crafting_chef_techniques_01",
						"Cooking II", "crafting_chef_techniques_02",
						"Cooking III", "crafting_chef_techniques_03",
						"Cooking IV", "crafting_chef_techniques_04"
					},
					"Master", "crafting_chef_master"
				},
--				"Combat Medic",
--				{
--					"Novice", "science_combatmedic_novice",
--
--					"Crafting",
--					{
--						"Intermediate Combat Medicine Crafting", "science_combatmedic_medicine_01",
--						"Advanced Combat Medicine Crafting", "science_combatmedic_medicine_02",
--						"Expert Combat Medicine Crafting", "science_combatmedic_medicine_03",
--						"Master Combat Medicine Crafting", "science_combatmedic_medicine_04"
--					},
--				},
				"Dancer",
				{
					"Novice", "social_dancer_novice",
					"Techniques",
					{
						"Dancing Techniques I", "social_dancer_ability_01",
						"Dancing Techniques II", "social_dancer_ability_02",
						"Dancing Techniques III", "social_dancer_ability_03",
						"Technique Specialist IV", "social_dancer_ability_04"
					},
					"Wound Healing",
					{
						"Dancer's Wound Healing I", "social_dancer_wound_01",
						"Dancer's Wound Healing II", "social_dancer_wound_02",
						"Dancer's Wound Healing III", "social_dancer_wound_03",
						"Dancer's Wound Healing IV", "social_dancer_wound_04"
					},
					"Knowledge",
					{
						"Dancing Knowledge I", "social_dancer_knowledge_01",
						"Dancing Knowledge II", "social_dancer_knowledge_02",
						"Dancing Knowledge III", "social_dancer_knowledge_03",
						"Dancing Knowledge IV", "social_dancer_knowledge_04"
					},
					"Fatigue Healing",
					{
						"Dancer's Fatigue Healing I", "social_dancer_shock_01",
						"Dancer's Fatigue Healing II", "social_dancer_shock_02",
						"Dancer's Fatigue Healing III", "social_dancer_shock_03",
						"Dancer's Fatigue Healing IV", "social_dancer_shock_04"
					},
					"Master", "social_dancer_master"
				},
				"Doctor",
				{
					"Novice", "science_doctor_novice",

					"Medicine Crafting",
					{
						"Intermediate Doctor's Medicine Crafting", "science_doctor_support_01",
						"Advanced Doctor's Medicine Crafting", "science_doctor_support_02",
						"Expert Doctor's Medicine Crafting", "science_doctor_support_03",
						"Master Doctor's Medicine Crafting", "science_doctor_support_04"
					},
					--"Master", "science_doctor_master"
				},
				"Droid Engineer",
				{
					"Novice", "crafting_droidengineer_novice",
					"Production",
					{
						"Intermediate Droid Production", "crafting_droidengineer_production_01",
						"Advanced Droid Production", "crafting_droidengineer_production_02",
						"Expert Droid Production", "crafting_droidengineer_production_03",
						"Master Droid Production", "crafting_droidengineer_production_04"
					},
					"Construction Techniques",
					{
						"Intermediate Droid Construction Techniques", "crafting_droidengineer_techniques_01",
						"Advanced Droid Construction Techniques", "crafting_droidengineer_techniques_02",
						"Expert Droid Construction Techniques", "crafting_droidengineer_techniques_03",
						"Master Droid Construction Techniques", "crafting_droidengineer_techniques_04"
					},
					"Refinement",
					{
						"Intermediate Droid Refinement", "crafting_droidengineer_refinement_01",
						"Advanced Droid Refinement", "crafting_droidengineer_refinement_02",
						"Expert Droid Refinement", "crafting_droidengineer_refinement_03",
						"Master Droid Refinement", "crafting_droidengineer_refinement_04"
					},
					"Blueprints",
					{
						"Intermediate Droid Blueprints", "crafting_droidengineer_blueprints_01",
						"Advanced Droid Blueprints", "crafting_droidengineer_blueprints_02",
						"Expert Droid Blueprints", "crafting_droidengineer_blueprints_03",
						"Master Droid Blueprints", "crafting_droidengineer_blueprints_04"
					},
					"Master", "crafting_droidengineer_master"
				},
				"Entertainer",
				{
					"Novice", "social_entertainer_novice",
					"Image Design",
					{
						"Image Design I", "social_entertainer_hairstyle_01",
						"Image Design II", "social_entertainer_hairstyle_02",
						"Image Design III", "social_entertainer_hairstyle_03",
						"Image Design IV", "social_entertainer_hairstyle_04"
					},
					"Musicianship",
					{
						"Musicianship I", "social_entertainer_music_01",
						"Musicianship II", "social_entertainer_music_02",
						"Musicianship III", "social_entertainer_music_03",
						"Musicianship IV", "social_entertainer_music_04"
					},
					"Dancing",
					{
						"Dancing I", "social_entertainer_dance_01",
						"Dancing II", "social_entertainer_dance_02",
						"Dancing III", "social_entertainer_dance_03",
						"Dancing IV", "social_entertainer_dance_04"
					},
					"Entertainment Healing",
					{
						"Entertainment Healing I", "social_entertainer_healing_01",
						"Entertainment Healing II", "social_entertainer_healing_02",
						"Entertainment Healing III", "social_entertainer_healing_03",
						"Entertainment Healing IV", "social_entertainer_healing_04"
					},
					"Master", "social_entertainer_master"
				},
				"Image Designer",
				{
					"Novice", "social_imagedesigner_novice",
					"Hairstyling",
					{
						"Hairstyling I", "social_imagedesigner_hairstyle_01",
						"Hairstyling II", "social_imagedesigner_hairstyle_02",
						"Hairstyling III", "social_imagedesigner_hairstyle_03",
						"Hairstyling IV", "social_imagedesigner_hairstyle_04"
					},
					"Face",
					{
						"Face I", "social_imagedesigner_exotic_01",
						"Face II", "social_imagedesigner_exotic_02",
						"Face III", "social_imagedesigner_exotic_03",
						"Face IV", "social_imagedesigner_exotic_04"
					},
					"Bodyform",
					{
						"Bodyform I", "social_imagedesigner_bodyform_01",
						"Bodyform II", "social_imagedesigner_bodyform_02",
						"Bodyform III", "social_imagedesigner_bodyform_03",
						"Bodyform Iv", "social_imagedesigner_bodyform_04"
					},
					"Markings",
					{
						"Markings I", "social_imagedesigner_markings_01",
						"Markings II", "social_imagedesigner_markings_02",
						"Markings III", "social_imagedesigner_markings_03",
						"Markings IV", "social_imagedesigner_markings_04"
					},
					"Master", "social_imagedesigner_master"
				},
--				"Marksman",
--				{
--					"Novice", "combat_marksman_novice",
--					"Rifles",
--					{
--						"Rifles I", "combat_marksman_rifle_01",
--						"Rifles II", "combat_marksman_rifle_02",
--						"Rifles III", "combat_marksman_rifle_03",
--						"Rifles IV", "combat_marksman_rifle_04"
--					},
--					"Pistols",
--					{
--						"Pistols I", "combat_marksman_pistol_01",
--						"Pistols II", "combat_marksman_pistol_02",
--						"Pistols III", "combat_marksman_pistol_03",
--						"Pistols IV", "combat_marksman_pistol_04"
--					},
--					"Carbines",
--					{
--						"Carbines I", "combat_marksman_carbine_01",
--						"Carbines II", "combat_marksman_carbine_02",
--						"Carbines III", "combat_marksman_carbine_03",
--						"Carbines IV", "combat_marksman_carbine_04"
--					},
--					"Ranged Support",
--					{
--						"Ranged Support I", "combat_marksman_support_01",
--						"Ranged Support II", "combat_marksman_support_02",
--						"Ranged Support III", "combat_marksman_support_03",
--						"Ranged Support IV", "combat_marksman_support_04"
--					},
--					--"Master", "combat_marksman_master"
--				},
				"Medic",
				{
					"Novice", "science_medic_novice",
					"First Aid",
					{
						"First Aid I", "science_medic_injury_01",
						"First Aid II", "science_medic_injury_02",
						"First Aid III", "science_medic_injury_03",
						"First Aid IV", "science_medic_injury_04"
					},
					"Diagnostics",
					{
						"Diagnostics I", "science_medic_injury_speed_01",
						"Diagnostics II", "science_medic_injury_speed_02",
						"Diagnostics III", "science_medic_injury_speed_03",
						"Diagnostics IV", "science_medic_injury_speed_04"
					},
					"Pharmacology",
					{
						"Pharmacology I", "science_medic_ability_01",
						"Pharmacology II", "science_medic_ability_02",
						"Pharmacology III", "science_medic_ability_03",
						"Pharmacology IV", "science_medic_ability_04"	
					},
					"Organic Chemistry",
					{
						"Organic Chemistry I", "science_medic_crafting_01",
						"Organic Chemistry II", "science_medic_crafting_02",
						"Organic Chemistry III", "science_medic_crafting_03",
						"Organic Chemistry IV", "science_medic_crafting_04"				
					},
					--"Master", "science_medic_master"
				},
				"Merchant",
				{
					"Novice", "crafting_merchant_novice",
					"Advertising",
					{
						"Advertising I", "crafting_merchant_advertising_01",
						"Advertising II", "crafting_merchant_advertising_02",
						"Advertising III", "crafting_merchant_advertising_03",
						"Advertising IV", "crafting_merchant_advertising_04"
					},
					"Efficiency",
					{
						"Efficiency I", "crafting_merchant_sales_01",
						"Efficiency II", "crafting_merchant_sales_02",
						"Efficiency III", "crafting_merchant_sales_03",
						"Efficiency IV", "crafting_merchant_sales_04"
					},
					"Hiring",
					{
						"Hiring I", "crafting_merchant_hiring_01",
						"Hiring II", "crafting_merchant_hiring_02",
						"Hiring III", "crafting_merchant_hiring_03",
						"Hiring IV", "crafting_merchant_hiring_04"
					},
					"Management",
					{
						"Management I", "crafting_merchant_management_01",
						"Management II", "crafting_merchant_management_02",
						"Management III", "crafting_merchant_management_03",
						"Management IV", "crafting_merchant_management_04"
					},
					"Master", "crafting_merchant_master"
				},
				"Musician",
				{
					"Novice", "social_musician_novice",
					"Techniques",
					{
						"Musical Techniques I", "social_musician_ability_01",
						"Musical Techniques II", "social_musician_ability_02",
						"Musical Techniques III", "social_musician_ability_03",
						"Technique Specialist IV", "social_musician_ability_04"
					},
					"Wound Healing",
					{
						"Musician's Wound Healing I", "social_musician_wound_01",
						"Musician's Wound Healing II", "social_musician_wound_02",
						"Musician's Wound Healing III", "social_musician_wound_03",
						"Musician's Wound Healing IV", "social_musician_wound_04"
					},
					"Knowledge",
					{
						"Musical Knowledge I", "social_musician_knowledge_01",
						"Musical Knowledge II", "social_musician_knowledge_02",
						"Musical Knowledge III", "social_musician_knowledge_03",
						"Musical Knowledge IV", "social_musician_knowledge_04"
					},
					"Fatigue Healing",
					{
						"Musician's Fatigue Healing I", "social_musician_shock_01",
						"Musician's Fatigue Healing II", "social_musician_shock_02",
						"Musician's Fatigue Healing III", "social_musician_shock_03",
						"Musician's Fatigue Healing IV", "social_musician_shock_04"
					},
					"Master", "social_musician_master"
				},
--				"Ranger",
--				{
--					"Novice", "outdoors_ranger_novice",
--					"Frontiering",
--					{
--						"Frontiering I", "outdoors_ranger_tracking_01",
--						"Frontiering II", "outdoors_ranger_tracking_02",
--						"Frontiering III", "outdoors_ranger_tracking_03",
--						"Frontiering IV", "outdoors_ranger_tracking_04"
--					},
--				},
--				"Scout",
--				{
--					"Novice", "outdoors_scout_novice",
--					"Exploration",
--					{
--						"Exploration I", "outdoors_scout_movement_01",
--						"Exploration II", "outdoors_scout_movement_02",
--						"Exploration III", "outdoors_scout_movement_03",
--						"Exploration IV", "outdoors_scout_movement_04"
--					},
--					"Trapping",
--					{
--						"Trapping I", "outdoors_scout_tools_01",
--						"Trapping II", "outdoors_scout_tools_02",
--						"Trapping III", "outdoors_scout_tools_03",
--						"Trapping IV", "outdoors_scout_tools_04"
--					},
--					"Hunting",
--					{
--						"Hunting I", "outdoors_scout_harvest_01",
--						"Hunting II", "outdoors_scout_harvest_02",
--						"Hunting III", "outdoors_scout_harvest_03",
--						"Hunting IV", "outdoors_scout_harvest_04"
--					},
--					"Survival",
--					{
--						"Survival I", "outdoors_scout_camp_01",
--						"Survival II", "outdoors_scout_camp_02",
--						"Survival III", "outdoors_scout_camp_03",
--						"Survival IV", "outdoors_scout_camp_04"
--					},
--					--"Master", "outdoors_scout_master"
--				},
				"Shipwright",
				{
					"Novice", "crafting_shipwright_novice",
					"Spaceframe Engineering",
					{
						"Spaceframe Engineering I", "crafting_shipwright_engineering_01",
						"Spaceframe Engineering II", "crafting_shipwright_engineering_02",
						"Spaceframe Engineering III", "crafting_shipwright_engineering_03",
						"Spaceframe Engineering IV", "crafting_shipwright_engineering_04"
					},
					"Propulsion Technology",
					{
						"Propulsion Technology I", "crafting_shipwright_propulsion_01",
						"Propulsion Technology II", "crafting_shipwright_propulsion_02",
						"Propulsion Technology III", "crafting_shipwright_propulsion_03",
						"Propulsion Technology IV", "crafting_shipwright_propulsion_04"
					},
					"Core Systems",
					{
						"Core Systems I", "crafting_shipwright_systems_01",
						"Core Systems II", "crafting_shipwright_systems_02",
						"Core Systems III", "crafting_shipwright_systems_03",
						"Core Systems IV", "crafting_shipwright_systems_04"
					},
					"Defense Systems",
					{
						"Defense Systems I", "crafting_shipwright_defense_01",
						"Defense Systems II", "crafting_shipwright_defense_02",
						"Defense Systems III", "crafting_shipwright_defense_03",
						"Defense Systems IV", "crafting_shipwright_defense_04"
					},
					"Master", "crafting_shipwright_master"
				},
--				"Smuggler",
--				{
--					"Novice", "combat_smuggler_novice",
--
--					"Spices",
--					{
--						"Spices I", "combat_smuggler_spice_01",
--						"Spices II", "combat_smuggler_spice_02",
--						"Spices III", "combat_smuggler_spice_03",
--						"Spices IV", "combat_smuggler_spice_04"
--					},
--					--"Master", "combat_smuggler_master"
--				},
				"Tailor",
				{
					"Novice", "crafting_tailor_novice",
					"Casual Wear",
					{
						"Casual Wear I", "crafting_tailor_casual_01",
						"Casual Wear II", "crafting_tailor_casual_02",
						"Casual Wear III", "crafting_tailor_casual_03",
						"Casual Wear IV", "crafting_tailor_casual_04"
					},
					"Field Wear",
					{
						"Field Wear I", "crafting_tailor_field_01",
						"Field Wear II", "crafting_tailor_field_02",
						"Field Wear III", "crafting_tailor_field_03",
						"Field Wear IV", "crafting_tailor_field_04"
					},
					"Formal Wear",
					{
						"Formal Wear I", "crafting_tailor_formal_01",
						"Formal Wear II", "crafting_tailor_formal_02",
						"Formal Wear III", "crafting_tailor_formal_03",
						"Formal Wear IV", "crafting_tailor_formal_04"
					},
					"Tailoring",
					{
						"Tailoring I", "crafting_tailor_production_01",
						"Tailoring II", "crafting_tailor_production_02",
						"Tailoring III", "crafting_tailor_production_03",
						"Tailoring IV", "crafting_tailor_production_04"
					},
					"Master", "crafting_tailor_master"
				},
				"Weaponsmith",
				{
					"Novice", "crafting_weaponsmith_novice",
					"Melee",
					{
						"Intermediate Melee Weapons Crafting", "crafting_weaponsmith_melee_01",
						"Advanced Melee Weapons Crafting", "crafting_weaponsmith_melee_02",
						"Expert Melee Weapons Crafting", "crafting_weaponsmith_melee_03",
						"Master Melee Weapons Crafting", "crafting_weaponsmith_melee_04"
					},
					"Firearms",
					{
						"Intermediate Firearms Crafting", "crafting_weaponsmith_firearms_01",
						"Advanced Firearms Crafting", "crafting_weaponsmith_firearms_02",
						"Expert Firearms Crafting", "crafting_weaponsmith_firearms_03",
						"Master Firearms Crafting", "crafting_weaponsmith_firearms_04"
					},
					"Munitions",
					{
						"Intermediate Munitions Crafting", "crafting_weaponsmith_munitions_01",
						"Advanced Munitions Crafting", "crafting_weaponsmith_munitions_02",
						"Expert Munitions Crafting", "crafting_weaponsmith_munitions_03",
						"Master Munitions Crafting", "crafting_weaponsmith_munitions_04"
					},
					"Techniques",
					{
						"Intermediate Weapon Crafting Techniques", "crafting_weaponsmith_techniques_01",
						"Advanced Weapon Crafting Techniques", "crafting_weaponsmith_techniques_02",
						"Expert Weapon Crafting Techniques", "crafting_weaponsmith_techniques_03",
						"Master Weapon Crafting Techniques", "crafting_weaponsmith_techniques_04"
					},
					"Master", "crafting_weaponsmith_master"
				}
			},
			--"Unlearn All Skills", "unlearn_all_skills",
			"Heal Battle Fatigue", "cleanse_character",
			"Basic Health, Action & Mind Buffs (2 hour)", "enhance_character",
			"Remove Buffs and Empty Stomach (ralph)", "reset_buffs"
			--"Learn Languages", "language"
			--"Credits", "credits",
			--"Apply DOTs", "apply_dots",
			--"Clear DOTs", "clear_dots",
			--"Max XP", "max_xp"
		},
		"Items",
		{
			"Armor",
			{
				"Kashyyykian (Wookiee) Ceremonial Armor",
				{
					"Kashyyykian Ceremonial Left Bracer", "object/tangible/wearables/armor/kashyyykian_ceremonial/armor_kashyyykian_ceremonial_bracer_l.iff",
					"Kashyyykian Ceremonial Right Bracer", "object/tangible/wearables/armor/kashyyykian_ceremonial/armor_kashyyykian_ceremonial_bracer_r.iff",
					"Kashyyykian Ceremonial Chest Plate", "object/tangible/wearables/armor/kashyyykian_ceremonial/armor_kashyyykian_ceremonial_chest_plate.iff",
					"Kashyyykian Ceremonial Leggings", "object/tangible/wearables/armor/kashyyykian_ceremonial/armor_kashyyykian_ceremonial_leggings.iff"
				},
				"Guardian (Ithorian) Armor",
				{
					"Guardian Left Bicep", "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_bicep_l.iff",
					"Guardian Right Bicep", "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_bicep_r.iff",
					"Guardian Boots", "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_boots.iff",
					"Guardian Left Bracer", "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_bracer_l.iff",
					"Guardian Right Bracer", "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_bracer_r.iff",
					"Guardian Chest Plate", "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_chest_plate.iff",
					"Guardian Gloves", "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_gloves.iff",
					"Guardian Helmet", "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_helmet.iff",
					"Guardian Leggings", "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_leggings.iff"
				},
				"Composite (Humanoid) Armor",
				{
					"Composite Left Bicep", "object/tangible/wearables/armor/composite/armor_composite_bicep_l.iff",
					"Composite Right Bicep", "object/tangible/wearables/armor/composite/armor_composite_bicep_r.iff",
					"Composite Boots", "object/tangible/wearables/armor/composite/armor_composite_boots.iff",
					"Composite Left Bracer", "object/tangible/wearables/armor/composite/armor_composite_bracer_l.iff",
					"Composite Right Bracer", "object/tangible/wearables/armor/composite/armor_composite_bracer_r.iff",
					"Composite Chest Plate", "object/tangible/wearables/armor/composite/armor_composite_chest_plate.iff",
					"Composite Gloves", "object/tangible/wearables/armor/composite/armor_composite_gloves.iff",
					"Composite Helmet", "object/tangible/wearables/armor/composite/armor_composite_helmet.iff",
					"Composite Leggings", "object/tangible/wearables/armor/composite/armor_composite_leggings.iff"
				}
			},	
			"Furniture",
			{	
				"Paintings",
				{
					"Blumbush", "object/tangible/painting/painting_bestine_blumbush.iff",
					"Mattberry Plant", "object/tangible/painting/painting_bestine_mattberry.iff",
					"Rainbow Berry Bush", "object/tangible/painting/painting_bestine_rainbow_berry_bush.iff",
					"Valley View", "object/tangible/painting/painting_valley_view.iff"
				},
				"Lighting",
				{
					"Candle (Style 1)", "object/tangible/furniture/all/frn_all_lamp_candlestick_free_s01_lit.iff",
					"Free-Standing Lamp (Style 2)", "object/tangible/furniture/all/frn_all_lamp_free_s02.iff"
				},				
				"Rugs",
				{
					"Large Rectangular Rug (Style 1)", "object/tangible/furniture/modern/rug_rect_lg_s01.iff",
					"Large Round Rug (Style 1)", "object/tangible/furniture/modern/rug_rnd_lg_s01.iff",
					"Large Oval Rug (Style 1)", "object/tangible/furniture/modern/rug_oval_sml_s01.iff"
				},
				"Plants",
				{
					"Large Potted Plant (Style 1)", "object/tangible/furniture/all/frn_all_plant_potted_lg_s1.iff",
					"Small Potted Plant (Style 1)", "object/tangible/furniture/all/frn_all_potted_plants_sml_s01.iff",
					"Potted Tree (Style 1)", "object/tangible/furniture/all/frn_all_tree_potted_s1.iff"
				},
				"Miscellaneous Decorations",
				{
					"Bottle (Style 1)", "object/tangible/furniture/decorative/bottle_pear.iff",
					"Bowl", "object/tangible/furniture/decorative/carved_bowl.iff",
					"Bed", "object/tangible/furniture/all/frn_all_bed_lg_s1.iff"
				},			
				"Cheap Furniture (COMPLETE)",
				{
					"Cheap Armoire", "object/tangible/furniture/cheap/armoire_s01.iff",
					"Cheap Bookcase", "object/tangible/furniture/cheap/bookcase_s01.iff",
					"Cheap Cabinet", "object/tangible/furniture/cheap/cabinet_s01.iff",
					"Cheap Chair", "object/tangible/furniture/cheap/chair_s01.iff",
					"Cheap Chest", "object/tangible/furniture/cheap/chest_s01.iff",
					"Cheap Coffee Table", "object/tangible/furniture/cheap/coffee_table_s01.iff",
					"Cheap Couch", "object/tangible/furniture/cheap/couch_s01.iff",
					"Cheap End Table", "object/tangible/furniture/cheap/end_table_s01.iff",
					"Cheap Love Seat", "object/tangible/furniture/cheap/love_seat_s01.iff"
				}
			},
			"Instruments",
			{
				"Bandfill", "object/tangible/instrument/bandfill.iff",
				"Fanfar", "object/tangible/instrument/fanfar.iff",
				"Fizz", "object/tangible/instrument/fizz.iff",
				"Flute Droopy", "object/tangible/instrument/flute_droopy.iff",
				"Kloo Horn", "object/tangible/instrument/kloo_horn.iff",
				"Mandoviol", "object/tangible/instrument/mandoviol.iff",
				"Nalargon", "object/tangible/instrument/nalargon.iff",
				"Ommni Box", "object/tangible/instrument/ommni_box.iff",
				"Slitherhorn", "object/tangible/instrument/slitherhorn.iff",
				"Traz", "object/tangible/instrument/traz.iff"
			},
--			"Pharmaceutical",
--			{
--				"Medpack Enhance Action D", "object/tangible/medicine/crafted/medpack_enhance_action_d.iff",
--				"Medpack Enhance Constitution D", "object/tangible/medicine/crafted/medpack_enhance_constitution_d.iff",
--				"Medpack Enhance Health D", "object/tangible/medicine/crafted/medpack_enhance_health_d.iff",
--				"Medpack Enhance Quickness D", "object/tangible/medicine/crafted/medpack_enhance_quickness_d.iff",
--				"Medpack Enhance Stamina D", "object/tangible/medicine/crafted/medpack_enhance_stamina_d.iff",
--				"Medpack Enhance Strength D", "object/tangible/medicine/crafted/medpack_enhance_strength_d.iff"
--			},
			"Tools",
			{
				"Crafting Tools",
				{
					"Clothing and Armor Crafting Tool", "object/tangible/crafting/station/clothing_tool.iff",
					"Food and Chemical Crafting Tool", "object/tangible/crafting/station/food_tool.iff",
					"Generic Crafting Tool", "object/tangible/crafting/station/generic_tool.iff",
					"Starship Crafting Tool", "object/tangible/crafting/station/space_tool.iff",
					"Structure and Furniture Crafting Tool", "object/tangible/crafting/station/structure_tool.iff",
					"Weapon, Droid, and General Item Crafting Tool", "object/tangible/crafting/station/weapon_tool.iff"
				},
				"Survey Tools",
				{
					"Gas Survey Tool", "object/tangible/survey_tool/survey_tool_gas.iff",
					--"Inorganic Survey Tool", "oobject/tangible/survey_tool/survey_tool_inorganic.iff",
					"Chemical Survey Tool", "object/tangible/survey_tool/survey_tool_liquid.iff",
					"Flora Survey Tool", "object/tangible/survey_tool/survey_tool_lumber.iff",
					"Mineral Survey Tool", "object/tangible/survey_tool/survey_tool_mineral.iff",
					"Moisture Survey Tool", "object/tangible/survey_tool/survey_tool_moisture.iff",
					--"Organic Survey Tool", "object/tangible/survey_tool/survey_tool_organic.iff",
					"Solar Survey Tool", "object/tangible/survey_tool/survey_tool_solar.iff",
					"Wind Survey Tool", "object/tangible/survey_tool/survey_tool_wind.iff"
				}
			}
		}
	}
}

ObjectTemplates:addTemplate(object_tangible_terminal_terminal_character_builder, "object/tangible/terminal/terminal_character_builder.iff")
