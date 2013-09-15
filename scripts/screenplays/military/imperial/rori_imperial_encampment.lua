RoriImperialEncampmentScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "RoriImperialEncampmentScreenPlay",
}

registerScreenPlay("RoriImperialEncampmentScreenPlay", true)

function RoriImperialEncampmentScreenPlay:start()
	if (isZoneEnabled("rori")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
--		self:initializeLootContainers()  --Why is this here, this place has no loot boxes???
	end
end

function RoriImperialEncampmentScreenPlay:spawnSceneObjects()

	-- Travel terminal

	local pCollector = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", -5576.0, 76, -5619.2, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Kaadara Outpost - (Naboo)")
	createObserver(OBJECTRADIALUSED, "RoriImperialEncampmentScreenPlay", "teleportImpOutpost", pCollector)
	
	local pCollector2 = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", -5577.3, 76, -5619.2, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector2)
	local col2creo = LuaCreatureObject(pCollector2)
	col2creo:setOptionsBitmask(128)
	collector:setCustomObjectName("\\#ee3377Travel to Emperor's Retreat - (Naboo)")
	createObserver(OBJECTRADIALUSED, "RoriImperialEncampmentScreenPlay", "teleportImpRetreat", pCollector2)
			
	-- Terminals

	spawnSceneObject("rori", "object/tangible/terminal/terminal_character_builder.iff", -5580.0, 76.0, -5619.7, 0, 0, 0, 1, 0)
	spawnSceneObject("rori", "object/tangible/terminal/terminal_mission_imperial.iff", -5573.2, 76.0, -5617.9, 0, 0, 0, 1, 0)

	--Shuttle

	--spawnSceneObject("rori", "object/tangible/event_perk/lambda_shuttle.iff", -5311, 75, 4991, 0, 0, 0, 1, 0)

end

function RoriImperialEncampmentScreenPlay:spawnMobiles()

--inside the walls (not in buildings)

	spawnMobile("rori", "at_st", 720, -5597.3, 75.9, -5660.5, 0, 0)
	spawnMobile("rori", "at_st", 720, -5531.5, 75.9, -5660.5, 180, 0)

	spawnMobile("rori", "stormtrooper", 300, -5506.5, 75.9, -5661.1, 90, 0)
	spawnMobile("rori", "stormtrooper", 300, -5506.5, 75.9, -5666.9, 90, 0)
	spawnMobile("rori", "stormtrooper", 300, -5502.5, 75.9, -5664.0, 90, 0)

	spawnMobile("rori", "stormtrooper", 300, -5623.5, 75.9, -5665.5, -90, 0)
	spawnMobile("rori", "stormtrooper", 300, -5623.5, 75.9, -5658.7, -90, 0)
	spawnMobile("rori", "stormtrooper", 300, -5627.5, 75.9, -5661.6, -90, 0)

	spawnMobile("rori", "stormtrooper", 300, -5599.3, 75.9, -5633.7, 180, 0)
	spawnMobile("rori", "stormtrooper", 300, -5595.8, 75.9, -5633.7, 180, 0)

	spawnMobile("rori", "stormtrooper", 300, -5532.3, 75.9, -5633.7, 180, 0)
	spawnMobile("rori", "stormtrooper", 300, -5527.8, 75.9, -5633.7, 180, 0)

	spawnMobile("rori", "stormtrooper", 300, -5599.3, 75.9, -5690.0, 0, 0)
	spawnMobile("rori", "stormtrooper", 300, -5595.8, 75.9, -5690.0, 0, 0)

	spawnMobile("rori", "stormtrooper", 300, -5532.3, 75.9, -5690.0, 0, 0)
	spawnMobile("rori", "stormtrooper", 300, -5527.8, 75.9, -5690.0, 0, 0)

	spawnMobile("rori", "assault_trooper", 300, -5569.1, 75.9, -5630.4, 0, 0)
	spawnMobile("rori", "assault_trooper", 300, -5562.1, 75.9, -5630.4, 0, 0)

	--towers

	spawnMobile("rori", "stormtrooper_sniper", 300, -5510.3, 82.9, -5702.1, 135, 0)
	spawnMobile("rori", "stormtrooper_squad_leader", 300, -5516.1, 82.9, -5702.4, 180, 0)

	spawnMobile("rori", "stormtrooper_sniper", 300, -5508.7, 82.9, -5630.7, 90, 0)
	spawnMobile("rori", "stormtrooper_rifleman", 300, -5509.3, 82.9, -5623.6, 45, 0)
	spawnMobile("rori", "stormtrooper_colonel", 300, -5514.7, 82.9, -5622.7, 0, 0)

	spawnMobile("rori", "stormtrooper_sniper", 300, -5612.8, 83.0, -5623.3, 0, 0)
	spawnMobile("rori", "stormtrooper_squad_leader", 300, -5618.4, 83.0, -5623.7, -45, 0)

	spawnMobile("rori", "stormtrooper_sniper", 300, -5619.4, 82.6, -5696.9, -90, 0)
	spawnMobile("rori", "stormtrooper_rifleman", 300, -5618.5, 82.6, -5702.6, -135, 0)
	spawnMobile("rori", "stormtrooper_squad_leader", 300, -5613.1, 82.6, -5703.4, 180, 0)

	--buildings

	spawnMobile("rori", "stormtrooper_captain", 300, 4.9, 0.0, -2.0, -135, 3475375)
	spawnMobile("rori", "stormtrooper_rifleman", 300, 0.0, 0.0, -5.3, 0, 3475373)
	spawnMobile("rori", "stormtrooper_squad_leader", 300, -3.8, 0.0, -3.6, 90, 3475376)

	spawnMobile("rori", "stormtrooper", 300, 0.0, 0.0, -3.6, 0, 3475366)
	spawnMobile("rori", "stormtrooper_rifleman", 300, 0.0, 0.0, -5.3, 0, 3475366)
	spawnMobile("rori", "stormtrooper_squad_leader", 300, 0.0, 0.0, -1.0, 0, 3475366)

	spawnMobile("rori", "stormtrooper_rifleman", 300, 3.9, 0.0, 2.1, 90, 2935496)
	spawnMobile("rori", "stormtrooper_squad_leader", 300, 0.0, 0.0, -5.3, 0, 2935495)

	--main building

	spawnMobile("rori", "dark_trooper", 300, 1.4, 1.0, 9.9, -90, 2935406)
	spawnMobile("rori", "dark_trooper", 300, 6.4, 1.0, -7.2, -90, 2935406)
	spawnMobile("rori", "dark_trooper", 300, 0.0, 1.0, 0.9, 0, 2935406)

	spawnMobile("rori", "imperial_first_lieutenant", 300, 15.7, 1.0, 15.2, 90, 2935407)
	spawnMobile("rori", "imperial_private", 300, -17.7, 1.0, 16.5, 180, 2935408)
	spawnMobile("rori", "imperial_major", 300, 18.3, 1.0, -19.7, -45, 2935410)
	spawnMobile("rori", "imperial_medic", 300, 11.7, 1.0, -19.5, 0, 2935410)
	spawnMobile("rori", "imperial_private", 300, -17.5, 1.0, -19.6, 45, 2935412)

	spawnMobile("rori", "dark_trooper", 300, -9.2, 7.0, -13.5, 0, 2935414)
	spawnMobile("rori", "dark_trooper", 300, -11.7, 7.0, -13.5, 0, 2935414)

	spawnMobile("rori", "imperial_major", 300, -11.5, 7.0, 9.3, 90, 2935415)
	spawnMobile("rori", "imperial_lieutenant_colonel", 300, -9.1, 7.0, 12.5, 0, 2935415)
	spawnMobile("rori", "imperial_first_lieutenant", 300, 0.0, 7.0, 12.6, 0, 2935415)
	spawnMobile("rori", "imperial_medic", 300, 14.1, 7.0, 11.8, 60, 2935416)

	--outside the walls

	spawnMobile("rori", "thug", 21, -5574.1, 75.9, -5759.4, 120, 0)
	spawnMobile("rori", "thug", 21, -5559.4, 75.9, -5761.8, 90, 0)
	spawnMobile("rori", "thug", 21, -5557.3, 75.9, -5773.4, 0, 0)
	spawnMobile("rori", "thug", 21, -5562.1, 75.9, -5772.7, -90, 0)
	spawnMobile("rori", "thug", 21, -5569.1, 75.9, -5778.4, -30, 0)
	spawnMobile("rori", "thug", 21, -5551.1, 75.9, -5782.5, 30, 0)
	spawnMobile("rori", "thug", 21, -5559.1, 75.9, -5781.4, -75, 0)
	spawnMobile("rori", "thug", 21, -5562.1, 75.9, -5784.3, 45, 0)

	--Sentrie
	
	spawnMobile("rori", "sentry_stormtrooper", 360, -5500.4, 75.9, -5656.2, 92, 0)
	spawnMobile("rori", "sentry_stormtrooper", 360, -5500.4, 75.7, -5672.1, 95, 0)
	--
	spawnMobile("rori", "sentry_stormtrooper_rifleman", 360, -5630.1, 75.9, -5670.2, -87, 0)
	spawnMobile("rori", "sentry_stormtrooper_sniper", 360, -5630.1, 75.9, -5653.9, -88, 0)
	spawnMobile("rori", "sentry_stormtrooper_squad_leader", 360, -5571.0, 76.0, -5630.7, -2, 0)
	--
	spawnMobile("rori", "sentry_stormtrooper_combat_medic", 360, -5559.7, 76.0, -5631.5, 0, 0)
	spawnMobile("rori", "sentry_stormtrooper_bombardier", 360, -5550.6, 76.0, -5687.5, 95, 0)
	--
	spawnMobile("rori", "sentry_stormtrooper_rifleman", 360, -5520.6, 76.0, -5682.2, 67, 0)
	spawnMobile("rori", "sentry_stormtrooper_rifleman", 360, -5518, 76.0, -5644.1, 86, 0)
	--
	spawnMobile("rori", "sentry_stormtrooper_sniper", 360, -5609.6, 76.0, -5642.9, -120, 0)
	spawnMobile("rori", "sentry_stormtrooper", 360, -5609.6, 76.0, -5681.6, -91, 0)

	spawnMobile("rori", "sentry_stormtrooper_bombardier", 360, -5585.6, 76.0, -5622.7, 163, 0)
	spawnMobile("rori", "sentry_stormtrooper_bombardier", 360, -5569.2, 76.0, -5617.7, 171, 0)
	


end

	
function RoriImperialEncampmentScreenPlay:teleportImpOutpost(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("naboo", 5333, 0, 6422, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end

function RoriImperialEncampmentScreenPlay:teleportImpRetreat(pCollector, pPlayer)
	local playerfaction = LuaCreatureObject(pPlayer)
	if (playerfaction:isImperial() == true) then
		local player = LuaSceneObject(pPlayer)
		player:switchZone("naboo", 2437.8, 0, -3895.7, 0)
	else
		local playerm = LuaCreatureObject(pPlayer)
		playerm:sendSystemMessage("You are not authorized to use this terminal")
	end
end
