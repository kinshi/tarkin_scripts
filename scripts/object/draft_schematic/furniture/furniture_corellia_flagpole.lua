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


object_draft_schematic_furniture_furniture_corellia_flagpole = object_draft_schematic_furniture_shared_furniture_corellia_flagpole:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Corellia Flagpole",

   craftingToolTab = 512, -- (See DraftSchemticImplementation.h)
   complexity = 18, 
   size = 1, 

   xpType = "crafting_clothing_general", 
   xp = 340, 
   
   disableFactoryRun = true,

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_furniture_ingredients_n", "craft_furniture_ingredients_n", "craft_furniture_ingredients_n", "craft_item_ingredients_n"},
   ingredientTitleNames = {"flag_base", "flag", "paints", "flagpole"},
   ingredientSlotType = {0, 0, 0, 0},
   resourceTypes = {"metal", "fiberplast", "petrochem_inert_polymer", "metal"},
   resourceQuantities = {30, 80, 25, 30},
   contribution = {100, 100, 100, 100},


   targetTemplate = "object/tangible/lair/base/objective_banner_corellia.iff",

   additionalTemplates = {
		"object/tangible/furniture/modern/shared_rug_rnd_sml_s01.iff",
		"object/tangible/furniture/modern/shared_rug_rnd_m_s01.iff",
		"object/tangible/furniture/modern/shared_rug_oval_sml_s01.iff",
		"object/tangible/furniture/modern/shared_rug_oval_m_s02.iff",
		"object/tangible/furniture/modern/shared_rug_oval_lg_s01.iff",
		"object/tangible/loot/misc/shared_majestic_rug.iff",
		"object/tangible/loot/misc/shared_casual_rug.iff",
		"object/tangible/furniture/all/shared_frn_all_rug_rectangle_large_style_01.iff",
		"object/tangible/furniture/all/shared_frn_all_rug_rectangle_large_style_02.iff",
		"object/tangible/furniture/all/shared_frn_all_rug_rectangle_large_style_04.iff",
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_furniture_furniture_corellia_flagpole, "object/draft_schematic/furniture/furniture_corellia_flagpole.iff")
