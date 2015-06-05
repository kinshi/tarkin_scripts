-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: NPCs and teleports for the Theed galactic travel hub.
-- Notes: 
-- Please place any future decorations in the appropiate city/location files
-- and keep this for travel NPCs only. 

-- Charging credits and Teleporting had to be placed in the seperate functions
-- due to conversingPlayer pointing to the creature object in getNextConversationScreen()
-- and the player object in runScreenHandlers(), each of which have different "methods".
-- At least that is the sense I made of it! - Tatwi 2015

local ObjectManager = require("managers.object.object_manager")

GalacticTravelToTheedScreenPlay = ScreenPlay:new {
	numberOfActs = 1, 
	hasPaid = "false",
	screenplayName = "GalacticTravelToTheedScreenPlay"
}

registerScreenPlay("GalacticTravelToTheedScreenPlay", true)

function GalacticTravelToTheedScreenPlay:start()
  if (isZoneEnabled("rori")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function GalacticTravelToTheedScreenPlay:spawnSceneObjects()
  -- No objects to place
end

function GalacticTravelToTheedScreenPlay:spawnMobiles()
  -- Spawn our pilots
  local pPilotCorellia = spawnMobile("corellia", "star_pilot_to_theed", 1, -38.0408, 28, -4727.4, 0, 0)
  local pPilotDantooine = spawnMobile("dantooine", "star_pilot_to_theed", 1, -642.662, 3, 2486.08, 42, 0)
  local pPilotDathomir = spawnMobile("dathomir", "star_pilot_to_theed", 1, 597.006, 6, 3095.09, 115, 0)
  local pPilotEndor = spawnMobile("endor", "star_pilot_to_theed", 1, -972.542, 73, 1560.99, 123, 0)
  local pPilotLok = spawnMobile("lok", "star_pilot_to_theed", 1, 454.739, 8.74727, 5501.41, 84, 0)
  local pPilotRori = spawnMobile("rori", "star_pilot_to_theed", 1, -5387.5, 80, -2159.27, 0, 0)
  local pPilotTalus = spawnMobile("talus", "star_pilot_to_theed", 1, 233.395, 6, -2940.64, 0, 0)
  local pPilotTatooine = spawnMobile("tatooine", "star_pilot_to_theed", 1, 3631.17, 5, -4791.17, 0, 0)
  local pPilotYavin = spawnMobile("yavin4", "star_pilot_to_theed", 1, -6931.51, 73, -5701.57, -46, 0)  

end


starpilottotheed_convo_handler = Object:new {}



function starpilottotheed_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("to_theed_start")
    else
      -- Start playing the rest of the conversation based on user input
      local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
      
      -- Set variable to track what option the player picked and get the option picked
      local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
      nextConversationScreen = conversation:getScreen(optionLink)
      
      -- Get some information about the player.
      local credits = creature:getCashCredits()
      
      -- Take action when the player makes a purchase.
      if (credits < 1000) then       
        -- Bail if the player doesn't have enough cash on hand.
        nextConversationScreen = conversation:getScreen("insufficient_funds")
      elseif (optionLink == "accept") then
        -- Take 1000 credits from the player's cash on hand.
        creature:subtractCashCredits(1000)
        self.hasPaid = "true"
      end
    end
  end
  -- end of the conversation logic.
  return nextConversationScreen
end


function starpilottotheed_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	local player = LuaSceneObject(conversingPlayer)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	
	-- Teleport player
	if (self.hasPaid == "true") then
  	if (screenID == "accept") then
      player:switchZone("naboo", -4851, 0, 4172, -90)
    end
    self.hasPaid = "false"
  end
  return conversationScreen
end

