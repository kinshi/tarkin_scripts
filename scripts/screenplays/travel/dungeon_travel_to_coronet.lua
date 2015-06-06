-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: NPCs and teleports for the Theed galactic travel hub.

-- Charging credits and Teleporting had to be placed in the seperate functions
-- due to conversingPlayer pointing to the creature object in getNextConversationScreen()
-- and the player object in runScreenHandlers(), each of which have different "methods".
-- At least that is the sense I made of it! - Tatwi 2015

local ObjectManager = require("managers.object.object_manager")

DungeonTravelToCoronetScreenPlay = ScreenPlay:new {
	numberOfActs = 1, 
	hasPaid = "false",
	screenplayName = "DungeonTravelToCoronetScreenPlay"
}

registerScreenPlay("DungeonTravelToCoronetScreenPlay", true)

function DungeonTravelToCoronetScreenPlay:start()
  if (isZoneEnabled("dathomir")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function DungeonTravelToCoronetScreenPlay:spawnSceneObjects()
   -- Placing Wolten Kinhara's Dunelizard
   
   -- Death Watch Bunker (Endor)
   spawnSceneObject("endor", "object/ship/hutt_medium_s01_tier1.iff", -4685.29, 16.4, 4297.38, 0, 0.999826, 0, 0.0186662, 0)
   -- Geo Cave (Yavin4)
   spawnSceneObject("yavin4", "object/ship/hutt_medium_s01_tier1.iff", -6494.05, 96.36, -504.348, 0, 0.999876, 0, -0.0157131, 0)
   -- Lord Nyax (Corellia)
   spawnSceneObject("corellia", "object/ship/hutt_medium_s01_tier1.iff", 1631.77, 19.8, -467.326, 0, 0.931843, 0, -0.362862, 0)
   -- Fort Tusken (Tatooine)
   spawnSceneObject("tatooine", "object/ship/hutt_medium_s01_tier1.iff", -3887.78, 19.7, 6377, 0, 0.0559651, 0, 0.998433, 0)
   -- Janta Cave (Dantooine)
   spawnSceneObject("dantooine", "object/ship/hutt_medium_s01_tier1.iff", 7039, 49.3, -4081, 0, 0.55096, 0, 0.834531, 0)
   -- The Warren (Dantooine)
   spawnSceneObject("dantooine", "object/ship/hutt_medium_s01_tier1.iff", -515.257, 5.2, -3746.81, 0, -0.684891, 0, 0.728646, 0)
   -- Droid Cave (Lok)
   spawnSceneObject("lok", "object/ship/hutt_medium_s01_tier1.iff", 3492.6, 15.3, -5022.31, 0, 0.931844, 0, -0.362858, 0)
   -- Nightsister Stronghold (Dathomir)
   spawnSceneObject("dathomir", "object/ship/hutt_medium_s01_tier1.iff", -4270, 123.3, 75, 0, 0.55096, 0, 0.834531, 0)
end



function DungeonTravelToCoronetScreenPlay:spawnMobiles()
  -- Placing Wolten Kinhara
  
   -- Death Watch Bunker (Endor)
   local pPilot1 = spawnMobile("endor", "wolten_kinhara_to_coronet", 1, -4688, 13, 4309, 42, 0)  
   -- Geo Cave (Yavin4)
   local pPilot2 = spawnMobile("yavin4", "wolten_kinhara_to_coronet", 1, -6497, 92, -489, 5, 0)
   -- Lord Nyax (Corellia)
   local pPilot3 = spawnMobile("corellia", "wolten_kinhara_to_coronet", 1, 1619, 18, -466, -74, 0)
   -- Fort Tusken (Tatooine)
   local pPilot4 = spawnMobile("tatooine", "wolten_kinhara_to_coronet", 1, -3906, 19, 6372, -137, 0)
   -- Janta Cave (Dantooine)
   local pPilot5 = spawnMobile("dantooine", "wolten_kinhara_to_coronet", 1, 7039, 46, -4071, 149, 0) 
   -- The Warren (Dantooine)
   local pPilot6= spawnMobile("dantooine", "wolten_kinhara_to_coronet", 1, -527, 7, -3770, -151, 0)
   -- Droid Cave (Lok)
   local pPilot7 = spawnMobile("lok", "wolten_kinhara_to_coronet", 1, 3478, 12, -5023, 42, 0)
   -- Nightsister Stronghold (Dathomir)
   local pPilot8 = spawnMobile("dathomir", "wolten_kinhara_to_coronet", 1, -4268, 120, 68, 42, 0)

end


woltenkinharatocoronet_convo_handler = Object:new {}



function woltenkinharatocoronet_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
-- Assign the player to variable creature for use inside this function.
  local creature = LuaCreatureObject(conversingPlayer)
  -- Get the last conversation to determine whetehr or not we're  on the first screen
  local convosession = creature:getConversationSession()
  lastConversation = nil
  local conversation = LuaConversationTemplate(conversationTemplate)
  local nextConversationScreen 
  
  -- If there is a conversation open, do stuff with it
  if ( conversation ~= nil ) then
    -- check to see if we have a next screen
    if ( convosession ~= nil ) then
       local session = LuaConversationSession(convosession)
       if ( session ~= nil ) then
        lastConversationScreen = session:getLastConversationScreen()
       end
    end
    
    -- Last conversation was nil, so get the first screen
    if ( lastConversationScreen == nil ) then
      nextConversationScreen = conversation:getScreen("to_coronet_start")
    else
      -- Start playing the rest of the conversation based on user input
      local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
      
      -- Set variable to track what option the player picked and get the option picked
      local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
      nextConversationScreen = conversation:getScreen(optionLink)
      
      -- Get some information about the player.
      local credits = creature:getCashCredits()
      
      -- Take action when the player makes a purchase.
      if (credits < 10000) then       
        -- Bail if the player doesn't have enough cash on hand.
        nextConversationScreen = conversation:getScreen("insufficient_funds")
      elseif (optionLink == "accept") then
        -- Take 1000 credits from the player's cash on hand.
        creature:subtractCashCredits(10000)
        self.hasPaid = "true"
      end
    end
  end
  -- end of the conversation logic.
  return nextConversationScreen
end


function woltenkinharatocoronet_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
  -- Plays the screens of the conversation.
  local player = LuaSceneObject(conversingPlayer)
  local screen = LuaConversationScreen(conversationScreen)
  local screenID = screen:getScreenID()
  
  -- Teleport player
  if (self.hasPaid == "true") then
    if (screenID == "accept") then
      player:switchZone("corellia", -56, 0, -4707, 0) 
    end
    self.hasPaid = "false"
  end
  return conversationScreen
end

