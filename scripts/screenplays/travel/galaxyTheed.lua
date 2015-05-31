-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Theed is the planetary travel hub connecting all the planets in the galaxy to Naboo.
--
-- Guidelines:
-- pcollector and collector MUST have unique names, so we add a number at the end of these.
-- collector# is for terminal from Coronet
-- collector#R is for terminal returning to corrent
-- Terminal name format: City or Location (Planet)
-- For return terminals, please comment their location above their code block as it is not
-- obvious where they are when reading the code block itself.


GalaxyTravelScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "GalaxyTravelScreenPlay"
}

registerScreenPlay("GalaxyTravelScreenPlay", true)

function GalaxyTravelScreenPlay:start()
  if (isZoneEnabled("yavin4")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function GalaxyTravelScreenPlay:spawnSceneObjects()

-- Place the terminals into the world

-- FROM THEED =====================

  -- Corellia - Coronet
  local pCollector0 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -30.9903, 7.9418, -42.7771, 1692104, 0.747232, 0, 0.664564, 0)
  local collector0 = LuaSceneObject(pCollector0)
  collector0:setCustomObjectName("\\#ee3377 Coronet (Corellia)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportCoronet", pCollector0)

  -- Dantooine - Mining Outpost
  local pCollector1 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -31.1035, 7.9418, -40.5938, 1692104, 0.747232, 0, 0.664564, 0)
  local collector1 = LuaSceneObject(pCollector1)
  collector1:setCustomObjectName("\\#ee3377 Mining Outpost (Dantooine)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportDantMining", pCollector1)

  -- Dathomir - Trade Outpost
  local pCollector2 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -31.1988, 7.9418, -39.3456, 1692104, 0.747232, 0, 0.664564, 0)
  local collector2 = LuaSceneObject(pCollector2)
  collector2:setCustomObjectName("\\#ee3377 Trade Outpost (Dathomir)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportDathTrade", pCollector2)

  -- Endor - Smuggler Outpost
  local pCollector3 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -31.2629, 7.9418, -37.5066, 1692104, 0.747232, 0, 0.664564, 0)
  local collector3 = LuaSceneObject(pCollector3)
  collector3:setCustomObjectName("\\#ee3377 Smuggler Outpost (Endor)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportEndorSmug", pCollector3)

  -- Lok - Nym's Stronghold
  local pCollector4 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -31.301, 7.9418, -35.6301, 1692104, 0.747232, 0, 0.664564, 0)
  local collector4 = LuaSceneObject(pCollector4)
  collector4:setCustomObjectName("\\#ee3377 Nym's Stronghold (Lok)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportLok", pCollector4)

  -- Rori - Narmle
  local pCollector5 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -31.2513, 7.9418, -33.79051, 1692104, 0.747232, 0, 0.664564, 0)
  local collector5 = LuaSceneObject(pCollector5)
  collector5:setCustomObjectName("\\#ee3377 Narmle (Rori)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportRoriNarmle", pCollector5)

  -- Talus - Dearic
  local pCollector6 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -31.3082, 7.9418, -31.3615, 1692104, 0.747232, 0, 0.664564, 0)
  local collector6 = LuaSceneObject(pCollector6)
  collector6:setCustomObjectName("\\#ee3377 Dearic (Talus)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportTalusDearic", pCollector6)

  -- Tatooine - Mos Eisley
  local pCollector7 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -31.3154, 7.9418, -29.5019, 1692104, 0.747232, 0, 0.664564, 0)
  local collector7 = LuaSceneObject(pCollector7)
  collector7:setCustomObjectName("\\#ee3377 Mos Eisley (Tatooine)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportTatME", pCollector7)

  -- Yavin4 - Labor Outpost
  local pCollector8 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -31.3403, 7.9418, -27.8738, 1692104, 0.747232, 0, 0.664564, 0)
  local collector8 = LuaSceneObject(pCollector8)
  collector8:setCustomObjectName("\\#ee3377 Labor Outpost (Yavin4)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportYavinLabor", pCollector8)
  
-- TO THEED =====================
  
  -- Corellia - Coronet
  local pCollector9 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -38.0408, 28, -4727.4, 0, 0.999108, 0, 0.0422203, 0)
  local collector9 = LuaSceneObject(pCollector9)
  collector9:setCustomObjectName("\\#ee3377 Theed (Naboo)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportNabooTheed", pCollector9)
  
  -- Dantooine - Mining Outpost
  local pCollector10 = spawnSceneObject("dantooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -646.486, 3, 2487.45, 0, 0.419796, 0, 0.907619, 0)
  local collector10 = LuaSceneObject(pCollector10)
  collector10:setCustomObjectName("\\#ee3377 Theed (Naboo)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportNabooTheed", pCollector10)
  
  -- Dathomir - Trade Outpost
  local pCollector11 = spawnSceneObject("dathomir", "object/tangible/furniture/imperial/data_terminal_s1.iff", 596.496, 6, 3099.35, 0, -0.24313, 0, 0.969994, 0)
  local collector11 = LuaSceneObject(pCollector11)
  collector11:setCustomObjectName("\\#ee3377 Theed (Naboo)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportNabooTheed", pCollector11)

  -- Endor - Smuggler Outpost
  local pCollector12 = spawnSceneObject("endor", "object/tangible/furniture/imperial/data_terminal_s1.iff", -970.212, 73, 1564.25, 0, -0.371994, 0, 0.928235, 0)
  local collector12 = LuaSceneObject(pCollector12)
  collector12:setCustomObjectName("\\#ee3377 Theed (Naboo)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportNabooTheed", pCollector12)
  
  -- Lok - Nym's Stronghold
  local pCollector13 = spawnSceneObject("lok", "object/tangible/furniture/imperial/data_terminal_s1.iff", 455.647, 8.74727, 5506.7, 0, -0.0206281, 0, 0.999787, 0)
  local collector13 = LuaSceneObject(pCollector13)
  collector13:setCustomObjectName("\\#ee3377 Theed (Naboo)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportNabooTheed", pCollector13)

  -- Rori - Narmle
  local pCollector14 = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", -5387.5, 80, -2159.27, 0, -0.154592, 0, 0.987978, 0)
  local collector14 = LuaSceneObject(pCollector14)
  collector14:setCustomObjectName("\\#ee3377 Theed (Naboo)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportNabooTheed", pCollector14)

  -- Talus - Dearic
  local pCollector15 = spawnSceneObject("talus", "object/tangible/furniture/imperial/data_terminal_s1.iff", 233.395, 6, -2940.64, 0, 0.197137, 0, 0.980376, 0)
  local collector15 = LuaSceneObject(pCollector15)
  collector15:setCustomObjectName("\\#ee3377 Theed (Naboo)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportNabooTheed", pCollector15)

  -- Tatooine - Mos Eisley
  local pCollector16 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", 3631.17, 5, -4791.17, 0, 0.964254, 0, -0.26498, 0)
  local collector16 = LuaSceneObject(pCollector16)
  collector16:setCustomObjectName("\\#ee3377 Theed (Naboo)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportNabooTheed", pCollector16)

  -- Yavin4 - Labor Outpost
  local pCollector17 = spawnSceneObject("yavin4", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6926.93, 73, -5703.08, 0, -0.703275, 0, 0.710918, 0)
  local collector17 = LuaSceneObject(pCollector17)
  collector17:setCustomObjectName("\\#ee3377 Theed (Naboo)")
  createObserver(OBJECTRADIALUSED, "GalaxyTravelScreenPlay", "teleportNabooTheed", pCollector17)

end

function GalaxyTravelScreenPlay:spawnMobiles()

  -- Place NPCs here.
end

-- Functions that actually teleport the player

function GalaxyTravelScreenPlay:teleportCoronet(pCollector0, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("corellia", -56, 0, -4707, 0)  
  return 0
end

function GalaxyTravelScreenPlay:teleportDantMining(pCollector1, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("dantooine", -640, 0, 2502, 0)  
  return 0
end

function GalaxyTravelScreenPlay:teleportDathTrade(pCollector2, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("dathomir", 619, 0, 3089, 0)  
  return 0
end

function GalaxyTravelScreenPlay:teleportEndorSmug(pCollector3, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("endor", -955, 0, 1557, 0)  
  return 0
end

function GalaxyTravelScreenPlay:teleportLok(pCollector4, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("lok", 474, 0, 5511, 0)  
  return 0
end

function GalaxyTravelScreenPlay:teleportRoriNarmle(pCollector5, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("rori", -5372, 0, -2190, 0)  
  return 0
end

function GalaxyTravelScreenPlay:teleportTalusDearic(pCollector6, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("talus", 255, 0, -2954, 0)  
  return 0
end

function GalaxyTravelScreenPlay:teleportTatME(pCollector7, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("tatooine", 3605, 0, -4777, 0)  
  return 0
end

function GalaxyTravelScreenPlay:teleportYavinLabor(pCollector8, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("yavin4", -6927, 0, -5709, 0)  
  return 0
end

function GalaxyTravelScreenPlay:teleportNabooTheed(pCollector, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("naboo", -4851, 0, 4172, -90)
  return 0
end
