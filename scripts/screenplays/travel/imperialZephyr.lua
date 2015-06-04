-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Imperial Zephyr Travel System connecting Imperial bases.
--
-- Guidelines:
-- pcollector and collector MUST have unique names, so we add a number at the end of these.
-- collector# is for terminal from Coronet
-- collector#R is for terminal returning to corrent
-- Terminal name format: City or Location (Planet)
-- For return terminals, please comment their location above their code block as it is not
-- obvious where they are when reading the code block itself.

-- Network Connections:

-- Imperial Stronghold - (Corellia) To:
  -- Emperor's Retreat - (Naboo)
  -- Imperial Detachment HQ - (Tatooine)
  -- Imperial Outpost - (Talus)
  -- Imperial Outpost - (Dantooine)
  -- Imperial Base - (Yavin4)
  
-- Imperial Outpost - (Dantooine) To:
  -- Imperial Stronghold - (Corellia)
  -- Imperial Prison (Dathomir)
  
-- Imperial Prison (Dathomir) To:
  -- Travel to Imperial Outpost - (Dantooine)
  -- Imperial Detachment HQ - (Tatooine)
  -- Imperial Prison (Lok)
  
-- Imperial Prison (Lok) To:
  -- Imperial Oasis (Tatooine)
  -- Imperial Prison (Dathomir)
  
-- Emperor's Retreat - (Naboo) To:
  -- Kaadara Outpost - (Naboo)
  -- Imperial Outpost - (Rori)
  -- Imperial Stronghold - (Corellia)
  -- Imperial Detachment HQ - (Tatooine)
  
 -- Kaadara Outpost - (Naboo) To:
  -- Imperial Outpost - (Rori)
  -- Emperor's Retreat - (Naboo)
  
-- Imperial Outpost - (Rori) To:
   -- Kaadara Outpost - (Naboo)
   -- Emperor's Retreat - (Naboo)
  
-- Imperial Outpost - (Talus) To:
  -- Imperial Stronghold - (Corellia)
  
-- Imperial Detachment HQ - (Tatooine) To:
  -- Imperial Oasis (Tatooine)
  -- Imperial Stronghold - (Corellia)
  -- Emperor's Retreat - (Naboo)
  
-- Imperial Oasis (Tatooine) To:
  -- Imperial Detachment HQ - (Tatooine)
  -- Imperial Prison (Lok)
  
-- Imperial Base - (Yavin4) To:
  -- Imperial Stronghold - (Corellia)  

ImperialZephyrScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "ImperialZephyrScreenPlay"
}

registerScreenPlay("ImperialZephyrScreenPlay", true)

function ImperialZephyrScreenPlay:start()
  if (isZoneEnabled("yavin4")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function ImperialZephyrScreenPlay:spawnSceneObjects()

-- Place the terminals into the world

    -- Corellia Stronghold ==============

  local pCollector0 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4610, 25, -5791, 0, 0, 0, 1, 0)
  local collector0 = LuaSceneObject(pCollector0)
  collector0:setCustomObjectName("\\#ee3377Travel to  Emperor's Retreat - (Naboo)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpRetreat", pCollector0)
  
  local pCollector2 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4617, 25, -5791, 0, 0, 0, 1, 0)
  local collector = LuaSceneObject(pCollector2)
  collector:setCustomObjectName("\\#ee3377Travel to Imperial Detachment HQ - (Tatooine)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportTatHQ", pCollector2)
  
  local pCollector3 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4617, 25, -5776, 0, 0, 0, 0, 0)
  local collector = LuaSceneObject(pCollector3)
  collector:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - (Talus)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportTalus", pCollector3)

  local pCollector4 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4618.8, 25.0, -5775.8, 0, 0, 0, 0, 0)
  local collector = LuaSceneObject(pCollector4)
  collector:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - (Dantooine)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportDantooine", pCollector4)

  local pCollector14 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4614.8, 25.0, -5775.2, 0, 0, 0, 0, 0)
  local collector14 = LuaSceneObject(pCollector14)
  collector14:setCustomObjectName("\\#ee3377Travel to Yavin4 Imperial Base - (Yavin4)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportYavin4", pCollector14)
  
  -- Imperial Outpost - (Dantooine) ==============
  
  local pCollector5 = spawnSceneObject("dantooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -4206.0, 3.0, -2346.0, -1, 0, 0, 1, 0)
  local collector5 = LuaSceneObject(pCollector5)
  collector5:setCustomObjectName("\\#ee3377Travel to Imperial Stronghold - (Corellia)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpStronghold", pCollector5)
  
  local pCollector26 = spawnSceneObject("dantooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -4207.71, 3.0, -2345.75, -1, 0, 0, 1, 0)
  local collector26 = LuaSceneObject(pCollector26)
  collector26:setCustomObjectName("\\#ee3377Travel to Imperial Prison - Dathomir)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportPrisonDath", pCollector26)
  
  -- Imperial Prison - (Dathomir) ==============
  
  local pCollector6 = spawnSceneObject("dathomir", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6230.73, 120, 937.996, 0, 0.962674, 0, 0.270663, 0)
  local collector6 = LuaSceneObject(pCollector6)
  collector6:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - (Dantooine)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportDantooine", pCollector6)
  
  local pCollector7 = spawnSceneObject("dathomir", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6228.38, 120, 936.471, 0, 0.966555, 0, 0.256459, 0)
  local collector7 = LuaSceneObject(pCollector7)
  collector7:setCustomObjectName("\\#ee3377Travel to Imperial Detachment HQ - (Tatooine)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportTatHQ", pCollector7)
  
  local pCollector8 = spawnSceneObject("dathomir", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6226.4, 120, 935.311, 0, 0.964248, 0, 0.265, 0)
  local collector8 = LuaSceneObject(pCollector8)
  collector8:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - (Lok)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportPrisonLok", pCollector8)
  
  -- Imperial Prison - (Lok) ===========
  
  local pCollector9 = spawnSceneObject("lok", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1936, 12, -3133, 0, 1, 0, 0, 0)
  local collector9 = LuaSceneObject(pCollector9)
  collector9:setCustomObjectName("\\#ee3377Travel to Imperial Oasis - (Tatooine)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpOasis", pCollector9)
  
  local pCollector9 = spawnSceneObject("lok", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1934.18, 12, -3133.02, 0, 1, 0, 0, 0)
  local collector9 = LuaSceneObject(pCollector9)
  collector9:setCustomObjectName("\\#ee3377Travel to Imperial Prison - Dathomir)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportPrisonDath", pCollector9)
  
  -- Emperor's Retreat - (Naboo) ===========
  
  local pCollector10 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2435.4, 292.0, -3899.7, 0, 0, 0, 1, 0)
  local collector10 = LuaSceneObject(pCollector10)
  collector10:setCustomObjectName("\\#ee3377Travel to Kaadara Outpost - (Naboo)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpOutpostKaadara", pCollector10)

  local pCollector11 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2437.2, 292.0, -3899.3, 0, 0, 0, 1, 0)
  local collector11 = LuaSceneObject(pCollector11)
  collector11:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - (Rori)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpEncampmentRori", pCollector11)
  
  local pCollector12 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2435, 292.0, -3896, 0, 0, 0, 0, 0)
  local collector12 = LuaSceneObject(pCollector12)
  collector12:setCustomObjectName("\\#ee3377Travel to Imperial Stronghold - (Corellia)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpStronghold", pCollector12)
  
  local pCollector13 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2437, 292.0, -3896, 0, 0, 0, 0, 0)
  local collector13 = LuaSceneObject(pCollector13)
  collector13:setCustomObjectName("\\#ee3377Travel to Imperial Detachment HQ - (Tatooine)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportTatHQ", pCollector13)
  
  -- Kaadara Outpost - (Naboo) ========
   
  local pCollector15 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 5331, -197, 6420, 0, 0, 0, 0, 0)
  local collector15 = LuaSceneObject(pCollector15)
  collector15:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - Rori")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpEncampmentRori", pCollector15)

  local pCollector16 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 5328, -197.0, 6420, 0, 0, 0, 0, 0)
  local collector16 = LuaSceneObject(pCollector16)
  collector16:setCustomObjectName("\\#ee3377Travel to Emperor's Retreat -(Naboo)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpRetreat", pCollector16)
  
   -- Imperial Outpost - (Rori) ===========
   
  local pCollector17 = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", -5576.0, 76, -5619.2, 0, 0, 0, 1, 0)
  local collector17 = LuaSceneObject(pCollector17)
  collector17:setCustomObjectName("\\#ee3377Travel to Kaadara Outpost - (Naboo)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpOutpostKaadara", pCollector17)
  
  local pCollector18 = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", -5577.3, 76, -5619.2, 0, 0, 0, 1, 0)
  local collector18 = LuaSceneObject(pCollector18)
  collector18:setCustomObjectName("\\#ee3377Travel to Emperor's Retreat - (Naboo)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpRetreat", pCollector18)
  
  -- Imperial Outpost - (Talus) ===========
  
  local pCollector19 = spawnSceneObject("talus", "object/tangible/furniture/imperial/data_terminal_s1.iff", -2212, 20, 2318, 0, 0, 0, 1, 0)
  local collector19 = LuaSceneObject(pCollector19)
  collector19:setCustomObjectName("\\#ee3377Travel to  Imperial Stronghold - (Corellia)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpStronghold", pCollector19)
  
  -- Imperial Detachment HQ - (Tatooine) ============
  
  local pCollector20 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -2576, 5.2, 2065, 0, 1, 0, 0, 0)
  local collector20 = LuaSceneObject(pCollector20)
  collector20:setCustomObjectName("\\#ee3377Travel to Imperial Oasis (Tatooine)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpOasis", pCollector20)
  
  local pCollector21 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -2578, 5.2, 2065, 0, 1, 0, 0, 0)
  local collector21 = LuaSceneObject(pCollector21)
  collector21:setCustomObjectName("\\#ee3377Travel to Imperial Stronghold (Corellia)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpStronghold", pCollector21)
  
  local pCollector22 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -2580, 5.2, 2065, 0, 1, 0, 0, 0)
  local collector22 = LuaSceneObject(pCollector22)
  collector22:setCustomObjectName("\\#ee3377Travel to Emporer's Retreat (Naboo)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpRetreat", pCollector22)
  
  -- Imperial Oasis (Tatooine) ==============
  
  local pCollector23 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -5359.0, 8.0, 2753.0, 0, 0, 0, 1, 0)
  local collector23 = LuaSceneObject(pCollector23)
  collector23:setCustomObjectName("\\#ee3377Travel to Imperial Detachment HQ - (Tatooine)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportTatHQ", pCollector23)

  local pCollector24 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -5363.0, 8.0, 2753.0, 0, 0, 0, 1, 0)
  local collector24 = LuaSceneObject(pCollector24)
  collector24:setCustomObjectName("\\#ee3377Travel to Imperial Outpost - (Lok)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportPrisonLok", pCollector24)
  
  -- Imperial Base - (Yavin4) ==============
  
  local pCollector25 = spawnSceneObject("yavin4", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4042.3, 37.0, -6222.0, 0, 0, 0, 1, 0)
  local collector25 = LuaSceneObject(pCollector25)
  collector25:setCustomObjectName("\\#ee3377Travel to Imperial Stronghold - (Corellia)")
  createObserver(OBJECTRADIALUSED, "ImperialZephyrScreenPlay", "teleportImpStronghold", pCollector25)
  
end

function ImperialZephyrScreenPlay:spawnMobiles()

  -- Place NPCs here.
end

-- Functions that teleport player

function ImperialZephyrScreenPlay:teleportImpRetreat(pCollectorA, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then
    local player = LuaSceneObject(pPlayer)
    player:switchZone("naboo", 2437.8, 0, -3895.7, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportTatHQ(pCollector13, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then
    local player = LuaSceneObject(pPlayer)
    player:switchZone("tatooine", -2583, 0, 2072, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportTalus(pCollectorD, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then
    local player = LuaSceneObject(pPlayer)
    player:switchZone("talus", -2212, 0, 2325, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportDantooine(pCollectorE, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then
    local player = LuaSceneObject(pPlayer)
    player:switchZone("dantooine", -4222.4, 3.0, -2360.9, -90)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportYavin4(pCollectorF, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then
    local player = LuaSceneObject(pPlayer)
    player:switchZone("yavin4", 4042.2, 3.0, -6228.3, -90)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportImpStronghold(pCollectorG, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then
    local player = LuaSceneObject(pPlayer)
    player:switchZone("corellia", 4621.7, 0, -5792.2, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportImpOasis(pCollectorH, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then  
    local player = LuaSceneObject(pPlayer)
    player:switchZone("tatooine", -5369, 0, 2748, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportImpOutpostKaadara(pCollectorI, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then  
    local player = LuaSceneObject(pPlayer)
    player:switchZone("naboo", 5333, 0, 6433, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportImpEncampmentRori(pCollectorJ, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then  
    local player = LuaSceneObject(pPlayer)
    player:switchZone("rori", -5573.4, 0, -5620.9, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportPrisonLok(pCollectorK, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then
    local player = LuaSceneObject(pPlayer)
    player:switchZone("lok", -1938, 0, -3133, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function ImperialZephyrScreenPlay:teleportPrisonDath(pCollectorK, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isImperial() == true) then
    local player = LuaSceneObject(pPlayer)
    player:switchZone("dathomir", -6231, 0, 946, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end