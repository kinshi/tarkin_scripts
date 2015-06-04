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

PlanetaryTatooineScreenPlay = ScreenPlay:new {
	numberOfActs = 1, 
	hasPaid = "false",
	screenplayName = "PlanetaryTatooineScreenPlay"
}

registerScreenPlay("PlanetaryTatooineScreenPlay", true)

function PlanetaryTatooineScreenPlay:start()
  if (isZoneEnabled("tatooine")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function PlanetaryTatooineScreenPlay:spawnSceneObjects()
  -- No objects to place
end

function PlanetaryTatooineScreenPlay:spawnMobiles()
  -- Spawn our pilots
  local pPilotMosEisley = spawnMobile("tatooine", "tatooine_shuttle_pilot", 1, 3425, 5.6, -4653, -51, 0 )
  local pPilotBestine = spawnMobile("tatooine", "tatooine_shuttle_pilot", 1, -1088, 12.6, -3564, -87, 0 )
  local pPilotMosEnthaWest = spawnMobile("tatooine", "tatooine_shuttle_pilot", 1, 1395, 7.6, 3477, 176, 0 )
  local pPilotMosEnthaEast = spawnMobile("tatooine", "tatooine_shuttle_pilot", 1, 1729, 7.4, 3192, 161, 0 )
  local pPilotAnchorhead = spawnMobile("tatooine", "tatooine_shuttle_pilot", 1, 46, 52.6, -5329, 153, 0 )
  local pPilotMosEspaWest = spawnMobile("tatooine", "tatooine_shuttle_pilot", 1, -3121, 5.6, 2172, 88, 0 )
  local pPilotMosEspaEast = spawnMobile("tatooine", "tatooine_shuttle_pilot", 1, -2893, 5.4, 1923, -17, 0 )
  local pPilotWayfar = spawnMobile("tatooine", "tatooine_shuttle_pilot", 1, -5064, 75.6, -6547, -72, 0 )
  local pPilotMosTaike = spawnMobile("tatooine", "tatooine_shuttle_pilot", 1, 3734, 6.4, 2409, 158, 0 )
end


tatooineshuttlepilot_convo_handler = Object:new {}



function tatooineshuttlepilot_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("tatooine_start")
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
      elseif (optionLink == "mos_eisley" or
              optionLink == "bestine" or
              optionLink == "mos_entha_west" or
              optionLink == "mos_entha_east" or
              optionLink == "anchorhead" or
              optionLink == "mos_espa_west" or
              optionLink == "mos_espa_east" or
              optionLink == "wayfar" or
              optionLink == "mos_taike"
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


function tatooineshuttlepilot_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	local player = LuaSceneObject(conversingPlayer)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	
	-- Teleport player
	if (self.hasPaid == "true") then
  	if (screenID == "mos_eisley") then
      player:switchZone("tatooine", 3419, 5, -4648, 0)
    elseif (screenID == "bestine") then
      player:switchZone("tatooine", -1096, 12, -3564, 0)
    elseif (screenID == "mos_entha_west") then
      player:switchZone("tatooine", 1398, 7, 3468, 0)
    elseif (screenID == "mos_entha_east") then
      player:switchZone("tatooine", 1730, 7, 3186, 0)
    elseif (screenID == "anchorhead") then
      player:switchZone("tatooine", 49, 52, -5340, 0)
    elseif (screenID == "mos_espa_west") then
      player:switchZone("tatooine", -3112, 5, 2172, 0)
    elseif (screenID == "mos_espa_east") then
      player:switchZone("tatooine", -2895, 5, 1932, 0)
    elseif (screenID == "wayfar") then
      player:switchZone("tatooine", -5073, 75, -6546, 0)
    elseif (screenID == "mos_taike") then
      player:switchZone("tatooine", 3741, 5, 2399, 0)
    end
    self.hasPaid = "false"
  end
  return conversationScreen
end

