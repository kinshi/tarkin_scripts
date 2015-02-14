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


object_tangible_loot_simple_kit_picture_printer = object_tangible_loot_simple_kit_shared_picture_printer:new {
		
	templateType = LOOTKIT,
	
	gameObjectType = 8233,
	
	--These are used to determine which components are necessary in the loot kit to finish the item
	collectibleComponents = {"object/tangible/loot/simple_kit/paint_cartridge.iff", "object/tangible/loot/simple_kit/flat_canvas.iff", "object/tangible/loot/simple_kit/paint_disperser.iff", "object/tangible/loot/tool/viewscreen_broken_s1.iff"},
	
	collectibleReward =  {"object/tangible/painting/painting_droid_bright.iff", "object/tangible/painting/painting_double_helix.iff", "object/tangible/painting/painting_bioengineer_orange.iff", "object/tangible/painting/painting_bestine_boffa.iff", "object/tangible/painting/painting_bestine_mattberry.iff", "object/tangible/painting/painting_bestine_rainbow_berry_bush.iff", "object/tangible/painting/painting_kite_plant.iff", "object/tangible/painting/painting_bestine_golden_flower_02.iff", "object/tangible/painting/painting_trees_s01.iff", "object/tangible/painting/painting_bestine_lucky_despot.iff", "object/tangible/painting/painting_planet_s01.iff", "object/tangible/painting/painting_bestine_moncal_eye_01.iff", "object/tangible/painting/painting_zabrak_m.iff", "object/tangible/painting/painting_wookiee_m.iff", "object/tangible/painting/painting_twilek_m.iff", "object/tangible/painting/painting_trandoshan_m.iff", "object/tangible/painting/painting_rodian_f.iff", "object/tangible/painting/painting_bothan_m.iff", "object/tangible/painting/painting_bothan_f.iff", "object/tangible/painting/painting_bestine_house.iff", "object/tangible/painting/painting_schematic_weapon_s03.iff", "object/tangible/painting/painting_schematic_transport_ship.iff", "object/tangible/painting/painting_food_baking_s02.iff", "object/tangible/painting/painting_armor_blueprint.iff", "object/tangible/painting/painting_valley_view.iff", "object/tangible/painting/painting_tato_s04.iff", "object/tangible/painting/painting_rodian_f_ad_01.iff", "object/tangible/painting/painting_teras_kasi.iff"},
	
	deleteComponents = 0,
	
	attributes = {}
}

ObjectTemplates:addTemplate(object_tangible_loot_simple_kit_picture_printer, "object/tangible/loot/simple_kit/picture_printer.iff")
