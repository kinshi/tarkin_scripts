-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: NPCs and teleports for the Theed galactic travel hub.

-- Charging credits and Teleporting had to be placed in the seperate functions
-- due to conversingPlayer pointing to the creature object in getNextConversationScreen()
-- and the player object in runScreenHandlers(), each of which have different "methods".
-- At least that is the sense I made of it! - Tatwi 2015

local ObjectManager = require("managers.object.object_manager")

DungeonTravelFromCoronetScreenPlay = ScreenPlay:new {
	numberOfActs = 1, 
	hasPaid = "false",
	screenplayName = "DungeonTravelFromCoronetScreenPlay"
}

registerScreenPlay("DungeonTravelFromCoronetScreenPlay", true)

function DungeonTravelFromCoronetScreenPlay:start()
  if (isZoneEnabled("naboo")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function DungeonTravelFromCoronetScreenPlay:spawnSceneObjects()
  -- Placing Wolten Kinhara's Dunelizard
  spawnSceneObject("corellia", "object/ship/hutt_medium_s01_tier1.iff", -17, 31.3, -4735, 0, 0.74722, 0, -0.664577, 0)
  
end

function DungeonTravelFromCoronetScreenPlay:spawnMobiles()
  -- Spawn Wolten Kinhara
  local pWolten = spawnMobile("corellia", "wolten_kinhara_from_coronet", 1, -21, 28, -4727, -57, 0 )
 
end


woltenkinharafromcoronet_convo_handler = Object:new {}



function woltenkinharafromcoronet_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("from_coronet_start")
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
      elseif (optionLink == "dwb" or
              optionLink == "geo" or
              optionLink == "nyax" or
              optionLink == "tusken" or
              optionLink == "janta" or
              optionLink == "warren" or
              optionLink == "droid" or
              optionLink == "nightsister"
             ) then
        -- Take 250 credits from the player's cash on hand.
        creature:subtractCashCredits(10000)
        self.hasPaid = "true"
      end
    end
  end
  -- end of the conversation logic.
  return nextConversationScreen
end


function woltenkinharafromcoronet_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	local player = LuaSceneObject(conversingPlayer)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	
	-- Teleport player
	if (self.hasPaid == "true") then
  	if (screenID == "dwb") then
      player:switchZone("endor", -4706, 0, 4334, 0)
    elseif (screenID == "geo") then
      player:switchZone("yavin4", -6500, 93, -495, 0)
    elseif (screenID == "nyax") then
      player:switchZone("corellia", 1623, 17, -472, 0)
    elseif (screenID == "tusken") then
     player:switchZone("tatooine", -3919, 0, 6367, 0)
    elseif (screenID == "janta") then
      player:switchZone("dantooine", 7035, 0, -4078, 0)
    elseif (screenID == "warren") then
      player:switchZone("dantooine", -524, 7, -3773, 0)
    elseif (screenID == "droid") then
      player:switchZone("lok", 3485, 0, -5027, 0)
    elseif (screenID == "nightsister") then
      player:switchZone("dathomir", -4266, 120, 65, 0)
    end
    self.hasPaid = "false"
  end
  return conversationScreen
end

