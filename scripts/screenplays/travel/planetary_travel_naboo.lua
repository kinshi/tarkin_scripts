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

PlanetaryNabooScreenPlay = ScreenPlay:new {
	numberOfActs = 1, 
	hasPaid = "false",
	screenplayName = "PlanetaryNabooScreenPlay"
}

registerScreenPlay("PlanetaryNabooScreenPlay", true)

function PlanetaryNabooScreenPlay:start()
  if (isZoneEnabled("naboo")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function PlanetaryNabooScreenPlay:spawnSceneObjects()
  -- No objects to place
end

function PlanetaryNabooScreenPlay:spawnMobiles()
  -- Spawn our pilots
  local pPilotTheedEast = spawnMobile("naboo", "naboo_shuttle_pilot", 1, -4976, 6.6, 4097, 35, 0 )
  local pPilotTheedPalace = spawnMobile("naboo", "naboo_shuttle_pilot", 1, -5406, 6.6, 4316, 35, 0 )
  local pPilotTheedWest = spawnMobile("naboo", "naboo_shuttle_pilot", 1, -5864, 6.6, 4173, 88, 0 )
  local pPilotLakeRetreat = spawnMobile("naboo", "naboo_shuttle_pilot", 1, -5485, -149.4, -23, -94, 0 )
  local pPilotKerenWest = spawnMobile("naboo", "naboo_shuttle_pilot", 1, 1562, 25.6, 2845, 154, 0 )
  local pPilotKerenEast = spawnMobile("naboo", "naboo_shuttle_pilot", 1, 2029, 19.6, 2524, -64, 0 )
  local pPilotKaadara = spawnMobile("naboo", "naboo_shuttle_pilot", 1, 5129, -191.4, 6608, -1, 0 )
  local pPilotDeejaPeak = spawnMobile("naboo", "naboo_shuttle_pilot", 1, 5341, 327.6, -1581, -82, 0 )
  local pPilotMoenia = spawnMobile("naboo", "naboo_shuttle_pilot", 1, 4971, 4.4, -4893, -82, 0 )
end


nabooshuttlepilot_convo_handler = Object:new {}



function nabooshuttlepilot_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("naboo_start")
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
      elseif (optionLink == "theed_east" or
              optionLink == "theed_palace" or
              optionLink == "theed_west" or
              optionLink == "lake_retreat" or
              optionLink == "keren_west" or
              optionLink == "keren_east" or
              optionLink == "kaadara" or
              optionLink == "deeja_peak" or
              optionLink == "moenia"
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


function nabooshuttlepilot_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	local player = LuaSceneObject(conversingPlayer)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	
	-- Teleport player
	if (self.hasPaid == "true") then
  	if (screenID == "theed_east") then
      player:switchZone("naboo", -4976, 0, 4103, 0)
    elseif (screenID == "theed_palace") then
      player:switchZone("naboo", -5411, 0, 4320, 0)
    elseif (screenID == "theed_west") then
      player:switchZone("naboo", -5858, 0, 4171, 0)
    elseif (screenID == "lake_retreat") then
      player:switchZone("naboo", -5492, -150, -22, 0)
    elseif (screenID == "keren_west") then
      player:switchZone("naboo", 1567, 25, 2840, 0)
    elseif (screenID == "keren_east") then
      player:switchZone("naboo", 2021, 19, 2526, 0)
    elseif (screenID == "kaadara") then
      player:switchZone("naboo", 5124, -192, 6615, 0)
    elseif (screenID == "deeja_peak") then
      player:switchZone("naboo", 5329, 326, -1574, 0)
    elseif (screenID == "moenia") then
      player:switchZone("naboo", 4960, 3, -4893, 0)
    end
    self.hasPaid = "false"
  end
  return conversationScreen
end

