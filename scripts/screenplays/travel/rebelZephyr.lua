-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Template for the Tarkin travel system.
--
-- Guidelines:
-- pcollector and collector MUST have unique names, so we add a number at the end of these.
-- collector# is for terminal from Coronet
-- collector#R is for terminal returning to corrent
-- Terminal name format: City or Location (Planet)
-- For return terminals, please comment their location above their code block as it is not
-- obvious where they are when reading the code block itself.

-- Network Connections:

-- Rebel Hideout - (Corellia) To:
  -- Anchorhead - (Tatooine)
  -- Moenia Starport - (Naboo)
  -- Talus Installation - (Talus)
  
-- Rebel Safehouse - (Lok) To: 
  -- Anchorhead - (Tatooine)
  
-- Starbird Base - (Rori) To:
  -- Rebel Outpost (Rori)
  
-- Rebel Outpost - (Rori) To:
  -- Starbird Base - (Rori)
  -- Moenia Starport - (Naboo)
  
-- Rebel Installation - (Talus) To:
  -- Rebel Hideout - (Corellia)
  
-- Anchorhead - (Tatooine) To:
  -- Moenia Starport - (Naboo)
  -- Rebel Hideout - (Corellia)
  -- Rebel Safehouse - (Lok)
  
-- Moenia Starport - (Naboo) To:
  -- Rebel Outpost (Rori)
  -- Rebel Hideout - (Corellia)

RebelZephyrScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "RebelZephyrScreenPlay"
}

registerScreenPlay("RebelZephyrScreenPlay", true)

function RebelZephyrScreenPlay:start()
  if (isZoneEnabled("yavin4")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function RebelZephyrScreenPlay:spawnSceneObjects()

-- Place the terminals into the world

  -- Rebel Hideout - (Corellia) ========================
   
  local pCollector0 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6528, 398.0, 6042, 0, 0, 0, 1, 0)
  local collector0 = LuaSceneObject(pCollector0)
  collector0:setCustomObjectName("\\#ee3377Travel to Anchorhead - (Tatooine)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportAH", pCollector0)

  local pCollector1 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6522, 398.0, 6043, 0, 0, 0, 1, 0)
  local collector1 = LuaSceneObject(pCollector1)
  collector1:setCustomObjectName("\\#ee3377Travel to Moenia Starport - (Naboo)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportMoenia", pCollector1)
  
  local pCollector2 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6532, 398.0, 6041, 0, 0, 0, 1, 0)
  local collector2 = LuaSceneObject(pCollector2)
  collector2:setCustomObjectName("\\#ee3377Travel to Talus Installation - (Talus)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportTalus", pCollector2)
  
  -- Rebel Safehouse - (Lok) ========================
  
  local pCollector3 = spawnSceneObject("lok", "object/tangible/furniture/imperial/data_terminal_s1.iff", -4761, 4.0, 3516, 0, 0, 0, 1, 0)
  local collector3 = LuaSceneObject(pCollector3)
  collector3:setCustomObjectName("\\#ee3377Travel to Anchorhead - (Tatooine)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportAH", pCollector3)
  
  -- Starbird Base - (Rori) ========================
  
  local pCollector4 = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", -5311, 76, 5004, 0, 1, 0, 0, 0)
  local collector4 = LuaSceneObject(pCollector4)
  collector4:setCustomObjectName("\\#ee3377Travel to Rebel Outpost (Rori)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportRebelOutpost", pCollector4)
  
  
  -- Rebel Outpost - (Rori) ========================
  
  local pCollector5 = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", 3703, 96.0, -6411, 0, -0.707107, 0, 0.707107, 0)
  local collector5 = LuaSceneObject(pCollector5)
  collector5:setCustomObjectName("\\#ee3377Travel to Starbird Base - (Rori)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportStarbird", pCollector5)

  local pCollector6 = spawnSceneObject("rori", "object/tangible/furniture/imperial/data_terminal_s1.iff", 3703, 96.0, -6417, 0, -0.707107, 0, 0.707107, 0)
  local collector6 = LuaSceneObject(pCollector6)
  collector6:setCustomObjectName("\\#ee3377Travel to Moenia Starport - (Naboo)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportMoenia", pCollector6)
  
  -- Rebel Installation - (Talus) ========================
  
  local pCollector7 = spawnSceneObject("talus", "object/tangible/furniture/imperial/data_terminal_s1.iff", 2388, 125, -4994, 0, 0, 0, 0, 0)
  local collector7 = LuaSceneObject(pCollector7)
  collector7:setCustomObjectName("\\#ee3377Travel to Rebel Hideout - (Corellia)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportHideout", pCollector7)
  
  
  -- Anchorhead - (Tatooine) ========================
  
  local pCollector8 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", 51.8, 52.0, -5335.9, 0, 0, 0, 1, 0)
  local collector8 = LuaSceneObject(pCollector8)
  collector8:setCustomObjectName("\\#ee3377Travel to Rebel Hideout - (Corellia)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportHideout", pCollector8)

  local pCollector9 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", 48.9, 52.0, -5335.9, 0, 0, 0, 1, 0)
  local collector9 = LuaSceneObject(pCollector9)
  collector9:setCustomObjectName("\\#ee3377Travel to Moenia Starport - (Naboo)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportMoenia", pCollector9)
  
  local pCollector10 = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", 46.1, 52.0, -5335.9, 0, 0, 0, 1, 0)
  local collector10 = LuaSceneObject(pCollector10)
  collector10:setCustomObjectName("\\#ee3377Travel to Rebel Safehouse - (Lok)")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportSafehouse", pCollector10)
  
  -- Moenia Starport - (Naboo) - (Tatooine) ========================
  
  local pCollector11 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4717, 4, -4654, 0, 0, 0, 1, 0)
  local collector11 = LuaSceneObject(pCollector11)
  collector11:setCustomObjectName("\\#ee3377Travel to Rebel Outpost - Rori")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportRebelOutpost", pCollector11)
  
  local pCollector12 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", 4720, 4, -4654, 0, 0, 0, 1, 0)
  local collector12 = LuaSceneObject(pCollector12)
  collector12:setCustomObjectName("\\#ee3377Travel to Rebel Hideout - Corellia")
  createObserver(OBJECTRADIALUSED, "RebelZephyrScreenPlay", "teleportHideout", pCollector12)
  
  
end

function RebelZephyrScreenPlay:spawnMobiles()

  -- Place NPCs here.
end

-- Functions that actually teleport the player

function RebelZephyrScreenPlay:teleportAH(pCollectorA, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isRebel() == true) then 
    local player = LuaSceneObject(pPlayer)
    player:switchZone("tatooine", 48, 0, -5342, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function RebelZephyrScreenPlay:teleportMoenia(pCollectorB, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isRebel() == true) then 
    local player = LuaSceneObject(pPlayer)
    player:switchZone("naboo", 4731, 4, -4677, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function RebelZephyrScreenPlay:teleportTalus(pCollectorC, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isRebel() == true) then 
    local player = LuaSceneObject(pPlayer)
    player:switchZone("talus", 2391, 4, -4990, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function RebelZephyrScreenPlay:teleportRebelOutpost(pCollectorD, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isRebel() == true) then 
    local player = LuaSceneObject(pPlayer)
    player:switchZone("rori", 3691, 0, -6403, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function RebelZephyrScreenPlay:teleportStarbird(pCollectorE, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isRebel() == true) then 
    local player = LuaSceneObject(pPlayer)
    player:switchZone("rori", -5310, 0, 5009, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function RebelZephyrScreenPlay:teleportHideout(pCollectorF, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isRebel() == true) then 
    local player = LuaSceneObject(pPlayer)
    player:switchZone("corellia", -6522, 0, 6035, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end

function RebelZephyrScreenPlay:teleportSafehouse(pCollectorG, pPlayer)
  local playerfaction = LuaCreatureObject(pPlayer)
  if (playerfaction:isRebel() == true) then 
    local player = LuaSceneObject(pPlayer)
    player:switchZone("lok", -4766, 0, 3512, 0)
  else
    local playerm = LuaCreatureObject(pPlayer)
    playerm:sendSystemMessage("You are not authorized to use this terminal")
  end
  return 0
end