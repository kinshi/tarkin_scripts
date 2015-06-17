local ObjectManager = require("managers.object.object_manager")
RaceTrack = require("screenplays.racetracks.racetrackengine")


theed_racetrack_screenplay = RaceTrack:new {
	trackConfig={
    debugMode=1, -- 0 = off, 1 = print debug messages
		planetName = "naboo", -- The planet the Track is on
		badgeToAward=BDG_RACING_KEREN_CITY,  -- Badge to be awarded for best daily time
		trackName="THEEDRT",  -- Internal trackname , should be unique to the track
		className="theed_racetrack_screenplay", -- Class name of this class
		trackCheckpoint="@theme_park/racing/racing:theed_waypoint_name_checkpoint", --Waypoint names
		trackLaptime="@theme_park/racing/racing:theed_laptime_checkpoint", -- System message sent at each waypoint
		timeResolution=2, -- number of decimal places to use for the laptimes 0 = none, 1 = well 1 etc
		expiryTime = (1*3600), --Amount of time in seconds that a player will be expired from the track (stops silly times over this limit)
    resetTime = (22*3600)+(10*60), --Time of day in seconds that track resets High Scores
		waypointRadius=10, -- size of the waypoint observer
		raceCoordinator = {x=-4866,y=4169,z=6}, -- Location of the race coordinator. Note the Z coord is VERY important or conversations break
		waypoints = { {x = -5050, y = 4236}, -- Merchant Row
					  {x = -5145, y = 4290}, -- Shamm's Cantina
					  {x = -5251, y = 4311}, -- Bridge
					  {x = -5341, y = 4443}, -- Kessel Freerunners Home
					  {x = -5488, y = 4384}, -- Palace
					  {x = -5657, y = 4478}, -- Suburbs
					  {x = -5719, y = 4292}, -- Theed West End
					  {x = -5562, y = 4062}, -- Bridge
					  {x = -5412, y = 4157}, -- City Hall
					  {x = -5231, y = 4210}, -- Junk Dealer
					  {x = -5121, y = 3782}, -- South Garden
					  {x = -4925, y = 3707}, -- Garage Bend
					  {x = -4881, y = 3914}, -- East Side Ride
					  {x = -5002, y = 4063}, -- Shuttle Tower Turn
					  {x = -4969, y = 4144}, -- Hospital Corner
					  {x = -4966, y = 4209}, -- The Last Bend
					  {x = -4866, y = 4169} -- Finish Line
					}
		}
}

registerScreenPlay("theed_racetrack_screenplay", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function theed_racetrack_screenplay:start()
	if (isZoneEnabled(self.trackConfig.planetName)) then
		self:spawnMobiles()
		self:createRaceTrack()
	end
end

function theed_racetrack_screenplay:spawnMobiles()
	local pCoord = spawnMobile(self.trackConfig.planetName, "theed_race_coordinator", 1, self.trackConfig.raceCoordinator.x, self.trackConfig.raceCoordinator.z, self.trackConfig.raceCoordinator.y, 35, 0)
end

function theed_racetrack_screenplay:enteredWaypoint(pActiveArea, pObject)
	return self:processWaypoint(pActiveArea, pObject)
end

theed_racetrack_convo_handler = Object:new {}

function theed_racetrack_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return ObjectManager.withCreatureObject(conversingPlayer, function(creatureObject)
		local convosession = creatureObject:getConversationSession()
		local lastConversationScreen = nil
		local conversation = LuaConversationTemplate(conversationTemplate)
		local nextConversationScreen
		if ( conversation ~= nil ) then
			-- checking to see if we have a next screen
			if ( convosession ~= nil ) then
				 local session = LuaConversationSession(convosession)
				 if ( session ~= nil ) then
				 	lastConversationScreen = session:getLastConversationScreen()
				 else
				 	print("session was not good in getNextScreen")
				 end
			end
			if ( lastConversationScreen == nil ) then
			 	nextConversationScreen = conversation:getInitialScreen()
			else
				local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
				local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
				nextConversationScreen = conversation:getScreen(optionLink)
			end
		end
		return nextConversationScreen
	end)
end

function theed_racetrack_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	if ( screenID == "cs_jsPlumb_1_116" ) then
		theed_racetrack_screenplay:startRacing(conversingPlayer)
	elseif ( screenID == "cs_jsPlumb_1_181" ) then -- Personal Best
		theed_racetrack_screenplay:displayPersonalBestTime(conversingPlayer)
	elseif ( screenID == "cs_jsPlumb_1_207" ) then -- Track Best
		theed_racetrack_screenplay:displayTrackBestTime(conversingPlayer)
	end
	return conversationScreen
end


