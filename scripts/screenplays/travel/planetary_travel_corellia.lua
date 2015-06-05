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

PlanetaryCorelliaScreenPlay = ScreenPlay:new {
	numberOfActs = 1, 
	hasPaid = "false",
	screenplayName = "PlanetaryCorelliaScreenPlay"
}

registerScreenPlay("PlanetaryCorelliaScreenPlay", true)

function PlanetaryCorelliaScreenPlay:start()
  if (isZoneEnabled("corellia")) then
    self:spawnSceneObjects()
    self:spawnMobiles()
  end
end

function PlanetaryCorelliaScreenPlay:spawnSceneObjects()
  -- No objects to place
end

function PlanetaryCorelliaScreenPlay:spawnMobiles()
  -- Spawn our pilots
  local pPilotCoronetWest = spawnMobile("corellia", "corellia_shuttle_pilot", 1, -328, 28.6, -4632, 172, 0 )
  local pPilotCoronetEast = spawnMobile("corellia", "corellia_shuttle_pilot", 1, -23, 28.6, -4399, -174, 0 )
  local pPilotKorVella = spawnMobile("corellia", "corellia_shuttle_pilot", 1, -3771, 86.6, 3240, 159, 0 )
  local pPilotTyrenaWest = spawnMobile("corellia", "corellia_shuttle_pilot", 1, -5610, 21.4, -2787, 90, 0 )
  local pPilotTyrenaEast = spawnMobile("corellia", "corellia_shuttle_pilot", 1, -5002, 21.6, -2376, -160, 0 )
  local pPilotDoabaGuefel = spawnMobile("corellia", "corellia_shuttle_pilot", 1, 3074, 280.6, 4993, 84, 0 )
  local pPilotBelaVistalNorth = spawnMobile("corellia", "corellia_shuttle_pilot", 1, 6941, 330.4, -5537, -114, 0 )
  local pPilotBelaVistalSouth = spawnMobile("corellia", "corellia_shuttle_pilot", 1, 6632, 330.6, -5921, 125, 0 )
  local pPilotVreniIsland = spawnMobile("corellia", "corellia_shuttle_pilot", 1, -5551, 16.4, -6049, 178, 0 )
end


corelliashuttlepilot_convo_handler = Object:new {}



function corelliashuttlepilot_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
      nextConversationScreen = conversation:getScreen("corellia_start")
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
      elseif (optionLink == "coronet_west" or
              optionLink == "coronet_east" or
              optionLink == "kor_vella" or
              optionLink == "tyrena_west" or
              optionLink == "tyrena_east" or
              optionLink == "doaba_guerfel" or
              optionLink == "bela_vistal_north" or
              optionLink == "bela_vistal_south" or
              optionLink == "vreni_isaland"
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


function corelliashuttlepilot_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	local player = LuaSceneObject(conversingPlayer)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	
	-- Teleport player
	if (self.hasPaid == "true") then
  	if (screenID == "coronet_west") then
      player:switchZone("corellia", -327, 28, -4638, 0)
    elseif (screenID == "coronet_east") then
      player:switchZone("corellia", -24, 28, -4407, 0)
    elseif (screenID == "kor_vella") then
      player:switchZone("corellia", -3774, 0, 3233, 0)
    elseif (screenID == "tyrena_west") then
      player:switchZone("corellia", -5602, 21, -2786, 0)
    elseif (screenID == "tyrena_east") then
      player:switchZone("corellia", -5002, 21, -2387, 0)
    elseif (screenID == "doaba_guerfel") then
      player:switchZone("corellia", 3083, 280, 4986, 0)
    elseif (screenID == "bela_vistal_north") then
      player:switchZone("corellia", 6928, 331, -5541, 0)
    elseif (screenID == "bela_vistal_south") then
      player:switchZone("corellia", 6639, 331, -5921, 0)
    elseif (screenID == "vreni_isaland") then
      player:switchZone("corellia", -5552, 15, -6059, 0)
    end
    self.hasPaid = "false"
  end
  return conversationScreen
end

