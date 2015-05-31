-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Handles travel to and from dungeons using free terminals.
--
-- Guidelines:
-- pcollector and collector MUST have unique names, so we add a number at the end of these.
-- collector# is for terminal from Coronet
-- collector#R is for terminal returning to corrent
-- Terminal name format: City or Location (Planet)
-- For return terminals, please comment their location above their code block as it is not
-- obvious where they are when reading the code block itself.


DungeonTravelScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "DungeonTravelScreenPlay"
}

registerScreenPlay("DungeonTravelScreenPlay", true)

function DungeonTravelScreenPlay:start()
  if (isZoneEnabled("yavin4")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function DungeonTravelScreenPlay:spawnSceneObjects()

-- FROM Coronet
  local pCollector1 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -39.2332, 28, -4700.81, 0, -0.215735, 0, 0.976452, 0)
  local collector1 = LuaSceneObject(pCollector1)
  collector1:setCustomObjectName("\\#ee3377 Death Watch Bunker (Endor)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportDWB", pCollector1)
  
  local pCollector2 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -18.882, 28, -4718.96, 0, -0.489086, 0, 0.870857, 0)
  local collector2 = LuaSceneObject(pCollector2)
  collector2:setCustomObjectName("\\#ee3377 Geonosian Lab (Yavin 4)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportGeo", pCollector2)
  
  local pCollector3 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -17.2687, 28, -4746.79, 0, 0.848836, 0, -0.528656, 0)
  local collector3 = LuaSceneObject(pCollector3)
  collector3:setCustomObjectName("\\#ee3377 Lord Nyax Compound (Corellia)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportNyax", pCollector3)

  local pCollector4 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -35.8925, 28, -4767.42, 0, 0.9564, 0, -0.292058, 0)
  local collector4 = LuaSceneObject(pCollector4)
  collector4:setCustomObjectName("\\#ee3377 Fort Tusken (Tatooine)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportTusken", pCollector4)

  local pCollector5 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -63.2629, 28, -4768.83, 0, 0.999535, 0, 0.0305036, 0)
  local collector5 = LuaSceneObject(pCollector5)
  collector5:setCustomObjectName("\\#ee3377 Janta Cave (Dantooine)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportJanta", pCollector5)
  
  local pCollector6 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -83.9268, 28, -4750.17, 0, 0.854505, 0, 0.519443, 0)
  local collector6 = LuaSceneObject(pCollector6)
  collector6:setCustomObjectName("\\#ee3377 The Warren (Dantooine)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportWarren", pCollector6)
  
  local pCollector7 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -85.2952, 28, -4722.76, 0, 0.674807, 0, 0.737994, 0)
  local collector7 = LuaSceneObject(pCollector7)
  collector7:setCustomObjectName("\\#ee3377 Droid Cave (Lok)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportDroidCave", pCollector7)


-- TO Coronet
  -- Death Watch Bunker (Endor)
  local pCollector1R = spawnSceneObject("endor", "object/tangible/furniture/imperial/data_terminal_s1.iff", -4676.91, 12.9917, 4319.02, 0, -0.67962, 0, 0.733564, 0)
  local collector1R = LuaSceneObject(pCollector1R)
  collector1R:setCustomObjectName("\\#ee3377 Coronet (Corellia)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportCoronet", pCollector1R)
  -- Geo Cave (Yavin4)
  local pCollector2R = spawnSceneObject("yavin4", "object/tangible/furniture/imperial/data_terminal_s1.iff", -6492.41, 83.6834, -427.282, 0, -0.331538, 0, 0.943442, 0)
  local collector2R = LuaSceneObject(pCollector2R)
  collector2R:setCustomObjectName("\\#ee3377 Coronet (Corellia)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportCoronet", pCollector2R)
  -- Lord Nyax (Corellia)
  local pCollector3R = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 1287.47, 27.4529, -295.996, 0, -0.396482, 0, 0.918043, 0)
  local collector3R = LuaSceneObject(pCollector3R)
  collector3R:setCustomObjectName("\\#ee3377 Coronet (Corellia)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportCoronet", pCollector3R)
  -- Fort Tusken (Tatooine)
  local pCollector4R = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -3918.01, 25.4385, 6361.46, 0, -0.328916, 0, 0.944359, 0)
  local collector4R = LuaSceneObject(pCollector4R)
  collector4R:setCustomObjectName("\\#ee3377 Coronet (Corellia)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportCoronet", pCollector4R)
  -- Janta Cave (Dantooine)
  local pCollector5R = spawnSceneObject("dantooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", 7037.24, 45.8506, -4074, 0, 0.557508, 0, 0.830172, 0)
  local collector5R = LuaSceneObject(pCollector5R)
  collector5R:setCustomObjectName("\\#ee3377 Coronet (Corellia)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportCoronet", pCollector5R)
  -- The Warren (Dantooine)
  local pCollector6R = spawnSceneObject("dantooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -543.085, 1, -3803.05, 0, -0.558325, 0, 0.829623, 0)
  local collector6R = LuaSceneObject(pCollector6R)
  collector6R:setCustomObjectName("\\#ee3377 Coronet (Corellia)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportCoronet", pCollector6R)
  -- Droid Cave (Lok)
  local pCollector7R = spawnSceneObject("lok", "object/tangible/furniture/imperial/data_terminal_s1.iff", 3477.59, 11.8811, -5023.1, 0, 0.575319, 0, 0.817929, 0)
  local collector7R = LuaSceneObject(pCollector7R)
  collector7R:setCustomObjectName("\\#ee3377 Coronet (Corellia)")
  createObserver(OBJECTRADIALUSED, "DungeonTravelScreenPlay", "teleportCoronet", pCollector7R)


end

function DungeonTravelScreenPlay:spawnMobiles()

  -- Using terminals rather than NPCs for this feature.
end

-- Teleport FROM Coronet
function DungeonTravelScreenPlay:teleportDWB(pCollector1, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("endor", -4706, 0, 4334, 0)
  return 0
end

function DungeonTravelScreenPlay:teleportGeo(pCollector2, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("yavin4", -6513, 0, -426, 0)
  return 0
end

function DungeonTravelScreenPlay:teleportNyax(pCollector3, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("corellia", 1282, 0, -302, 0)
  return 0
end

function DungeonTravelScreenPlay:teleportTusken(pCollector4, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("tatooine", -3919, 0, 6367, -90)
  return 0
end

function DungeonTravelScreenPlay:teleportJanta(pCollector5, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("dantooine", 7035, 0, -4078, -90)
  return 0
end

function DungeonTravelScreenPlay:teleportWarren(pCollector6, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("dantooine", -618, 0, -3738, -90)
  return 0
end

function DungeonTravelScreenPlay:teleportDroidCave(pCollector7, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("lok", 3485, 0, -5027, -90)
  return 0
end
  

-- Teleport TO Coronet
function DungeonTravelScreenPlay:teleportCoronet(pCollector, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("corellia", -131, 0, -4723, 0) 
  return 0
end
