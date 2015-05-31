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


REPLACEMEScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "REPLACEMEScreenPlay"
}

registerScreenPlay("REPLACEMEScreenPlay", true)

function REPLACEMEScreenPlay:start()
  if (isZoneEnabled("yavin4")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function REPLACEMEScreenPlay:spawnSceneObjects()

-- Place the terminals into the world
  local pCollector0 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -39.2332, 28, -4700.81, 0, -0.215735, 0, 0.976452, 0)
  local collector0 = LuaSceneObject(pCollector0)
  collector0:setCustomObjectName("\\#ee3377 Death Watch Bunker (Endor)")
  createObserver(OBJECTRADIALUSED, "REPLACEMEScreenPlay", "teleportDWB", pCollector0)
  
  local pCollector1 = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -18.882, 28, -4718.96, 0, -0.489086, 0, 0.870857, 0)
  local collector1 = LuaSceneObject(pCollector1)
  collector1:setCustomObjectName("\\#ee3377 Geonosian Lab (Yavin 4)")
  createObserver(OBJECTRADIALUSED, "REPLACEMEScreenPlay", "teleportGeo", pCollector1)
  
end

function REPLACEMEScreenPlay:spawnMobiles()

  -- Place NPCs here.
end

-- Functions that actually teleport the player
function REPLACEMEScreenPlay:teleportDWB(pCollector0, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("endor", -4706, 0, 4334, 0)
  return 0
end

function REPLACEMEScreenPlay:teleportGeo(pCollector1, pPlayer)
  local player = LuaSceneObject(pPlayer)
  player:switchZone("yavin4", -6513, 0, -426, 0)
  return 0
end
