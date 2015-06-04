-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: NPCs and teleports for the local shuttle ports on all planets.
-- Notes: 
-- Please place any future decorations in the appropiate city/location files
-- and keep this for travel NPCs only. 

-- Charging credits and Teleporting had to be placed in the seperate functions
-- due to conversingPlayer pointing to the creature object in getNextConversationScreen()
-- and the player object in runScreenHandlers(), each of which have different "methods".
-- At least that is the sense I made of it! - Tatwi 2015

local ObjectManager = require("managers.object.object_manager")

PlanetaryLokScreenPlay = ScreenPlay:new {
	numberOfActs = 1, 
	hasPaid = "false",
	screenplayName = "PlanetaryLokScreenPlay"
}

registerScreenPlay("PlanetaryLokScreenPlay", true)

function PlanetaryLokScreenPlay:start()
  if (isZoneEnabled("lok")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function PlanetaryLokScreenPlay:spawnSceneObjects()
  -- No objects to place
end

function PlanetaryLokScreenPlay:spawnMobiles()
  -- Spawn our pilots
  
  -- Lok doesn't have any public shuttle ports at this time, but I left you this template in case you add more later!
  -- Don't forget to edit the conversation template in mobile/conversations/tasks/planetary_travel_conv_handler.lua
  -- when you change the names of the destinations.
  
  --local pPilotLabor = spawnMobile("lok", "tarkin_shuttle_pilot", 1, -6934, 73, -5699, 137, 0 )
  --local pPilotMining = spawnMobile("lok", "tarkin_shuttle_pilot", 1, -287, 35, 4883, 74, 0 )
end


planetarytravel_convo_handler = Object:new {}



function planetarytravel_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("lok_start")
    else
      -- Start playing the rest of the conversation based on user input
      local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
      
      -- Set variable to track what option the player picked and get the option picked
      local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
      nextConversationScreen = conversation:getScreen(optionLink)
      
      -- Get some information about the player.
      local credits = creature:getCashCredits()
      
      -- Take action when the player makes a purchase.
      if (credits < 250) then       
        -- Bail if the player doesn't have enough cash on hand.
        nextConversationScreen = conversation:getScreen("insufficient_funds")
      elseif (optionLink == "labor_lok" or
              optionLink == "mining_lok"
             ) then
        -- Take 250 credits from the player's cash on hand.
        creature:subtractCashCredits(250)
        self.hasPaid = "true"
      end
    end
  end
  -- end of the conversation logic.
  return nextConversationScreen
end


function planetarytravel_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	local player = LuaSceneObject(conversingPlayer)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	
	-- Teleport player
	if (self.hasPaid == "true") then
  	if (screenID == "labor_lok") then
      player:switchZone("lok", -6921, 73, -5732, 0)
    elseif (screenID == "mining_lok") then
      player:switchZone("lok", -269, 35, 4896, 0)
    end
    self.hasPaid = "false"
  end
  return conversationScreen
end

