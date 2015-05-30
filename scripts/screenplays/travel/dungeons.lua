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
  -- Currently in the screenplays for Coronet, but will be moved here.

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
  -- Currently in the screenplays for Coronet, but will be moved here.

-- Teleport TO Coronet
function DungeonTravelScreenPlay:teleportCoronet(pCollector, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("corellia", -131, 0, -4723, 0) 
  return 0
end
