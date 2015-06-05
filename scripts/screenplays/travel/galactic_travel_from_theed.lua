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

GalacticTravelFromTheedScreenPlay = ScreenPlay:new {
	numberOfActs = 1, 
	hasPaid = "false",
	screenplayName = "GalacticTravelFromTheedScreenPlay"
}

registerScreenPlay("GalacticTravelFromTheedScreenPlay", true)

function GalacticTravelFromTheedScreenPlay:start()
  if (isZoneEnabled("naboo")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function GalacticTravelFromTheedScreenPlay:spawnSceneObjects()
  -- No objects to place
end

function GalacticTravelFromTheedScreenPlay:spawnMobiles()
  -- Spawn our pilots
  -- These are redundant, but will choose from 19 different looks, for fun.
  local pPilotA = spawnMobile("naboo", "star_pilot_from_theed", 1, -33.8567, 7.9418, 14.3643, 150, 1692104 )
  local pPilotB = spawnMobile("naboo", "star_pilot_from_theed", 1, -33.9965, 7.9418, 25.7302  , -76, 1692104 )
  local pPilotC = spawnMobile("naboo", "star_pilot_from_theed", 1, -10.1648, 7.9418, 8.41751, -136, 1692104 )
  local pPilotD = spawnMobile("naboo", "star_pilot_from_theed", 1, 29.7367, 7.9418, 11.9239, -105, 1692104 )
  local pPilotE = spawnMobile("naboo", "star_pilot_from_theed", 1, 33.1911, 7.9418, -12.2026, -45, 1692104 )
 
end


starpilotfromtheed_convo_handler = Object:new {}



function starpilotfromtheed_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("from_theed_start")
    else
      -- Start playing the rest of the conversation based on user input
      local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
      
      -- Set variable to track what option the player picked and get the option picked
      local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
      nextConversationScreen = conversation:getScreen(optionLink)
      
      -- Get some information about the player.
      local credits = creature:getCashCredits()
      
      -- Take action when the player makes a purchase.
      if (optionLink == "corellia") then
          if (credits >= 1000) then
            creature:subtractCashCredits(1000)
            self.hasPaid = "true"
          else
            nextConversationScreen = conversation:getScreen("insufficient_funds")
          end
      elseif (optionLink == "dantooine") then
          if (credits >= 5000) then
            creature:subtractCashCredits(5000)
           self.hasPaid = "true"
          else
            nextConversationScreen = conversation:getScreen("insufficient_funds")
          end
      elseif (optionLink == "dathomir") then
          if (credits >= 6500) then
           creature:subtractCashCredits(6500)
           self.hasPaid = "true"
          else
           nextConversationScreen = conversation:getScreen("insufficient_funds")
          end
      elseif (optionLink == "endor") then
          if (credits >= 4000) then
            creature:subtractCashCredits(4000)
            self.hasPaid = "true"
          else
            nextConversationScreen = conversation:getScreen("insufficient_funds")
          end
      elseif (optionLink == "lok") then
          if (credits >= 3500) then
            creature:subtractCashCredits(3500)
            self.hasPaid = "true"
          else
            nextConversationScreen = conversation:getScreen("insufficient_funds")
          end
      elseif (optionLink == "rori") then
          if  (credits >= 500) then
            creature:subtractCashCredits(500)
            self.hasPaid = "true"
          else
            nextConversationScreen = conversation:getScreen("insufficient_funds")
          end
      elseif (optionLink == "talus") then
          if (credits >= 1500) then
            creature:subtractCashCredits(1500)
            self.hasPaid = "true"
          else
            nextConversationScreen = conversation:getScreen("insufficient_funds")
          end
      elseif (optionLink == "tatooine") then
          if (credits >= 1000) then
            creature:subtractCashCredits(1000)
            self.hasPaid = "true"
          else
            nextConversationScreen = conversation:getScreen("insufficient_funds")
          end
      elseif (optionLink == "yavin4") then
          if (credits >= 4500) then
            creature:subtractCashCredits(4500)
            self.hasPaid = "true"
          else
            nextConversationScreen = conversation:getScreen("insufficient_funds")
          end
      end
    end
  end
  -- end of the conversation logic.
  return nextConversationScreen
end


function starpilotfromtheed_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	local player = LuaSceneObject(conversingPlayer)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	
	-- Teleport player
	if (self.hasPaid == "true") then
  	if (screenID == "corellia") then
      player:switchZone("corellia", -56, 0, -4707, 0)  
    elseif (screenID == "dantooine") then
      player:switchZone("dantooine", -640, 0, 2502, 0) 
    elseif (screenID == "dathomir") then
      player:switchZone("dathomir", 619, 0, 3089, 0) 
    elseif (screenID == "endor") then
      player:switchZone("endor", -955, 0, 1557, 0) 
    elseif (screenID == "lok") then
      player:switchZone("lok", 474, 0, 5511, 0)  
    elseif (screenID == "rori") then
      player:switchZone("rori", -5372, 0, -2190, 0)
    elseif (screenID == "talus") then
      player:switchZone("talus", 255, 0, -2954, 0) 
    elseif (screenID == "tatooine") then
      player:switchZone("tatooine", 3605, 0, -4777, 0)
    elseif (screenID == "yavin4") then
      player:switchZone("yavin4", -6927, 0, -5709, 0) 
    end
    self.hasPaid = "false"
  end
  return conversationScreen
end

