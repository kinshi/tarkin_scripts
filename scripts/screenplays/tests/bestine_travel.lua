BestineTravelScreenplay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "BestineTravelScreenplay",
}

registerScreenPlay("BestineTravelScreenplay", true)

function BestineTravelScreenplay:start()
	local pNpc = spawnMobile("tatooine", "bestine_travel_npc", 1, -1385.8, 12.0, -3584.4, -173, 0 )
	local collector = LuaSceneObject(pNpc)
	collector:setCustomObjectName("\\#ee3377Travel Droid")
	local col2creo = LuaCreatureObject(pNpc)
end


bestinetravel = Object:new {
	
	
 }


function bestinetravel:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
	
	print("------------------------------\n")
	
	-- now let's get the last conversation to really determine whetehr or not we're in the first
	-- screen
	
	local creature = LuaCreatureObject(conversingPlayer)
	local convosession = creature:getConversationSession()
	
	
	lastConversation = nil
	
	
	print("getNextConversation() called")
	
	local conversation = LuaConversationTemplate(conversationTemplate)
	
	local nextConversationScreen 
	
	
	if ( conversation ~= nil ) then
		
		-- checking to see if we have a next screen
		if ( convosession ~= nil ) then
			 
			 local session = LuaConversationSession(convosession)
			 
			 if ( session ~= nil ) then
			 	print("casting getlastconversationsreen()")
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
			
	 
		end
		if ( lastConversationScreen == nil ) then
			print("Last conversation is null.  let's try to get the first screen")

			local creature = LuaCreatureObject(conversingPlayer)
			local hasAccepted = creature:hasScreenPlayState(anniversary_screenplay.states.accepted, anniversary_screenplay.questString)
			print("hasAccepted() is " .. hasAccepted) 

			if ( hasAccepted == 0 ) then
			
				print("no screenplaystate so must not have accepted it yet")
				--nextConversationScreen = conversation:getInitialScreen()
				nextConversationScreen = conversation:getScreen("first_screen")
				--self:addQuestOptions(nextConversationScreen)
				
			else


			nextConversationScreen = conversation:getScreen("completed")
		end		
	
		else
			
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
		
			print("optionLink fromn the last screen is .. " .. optionLink)
		
			nextConversationScreen = conversation:getScreen(optionLink)
			
		end
		

	
	end
	

	return nextConversationScreen
	
end

function bestinetravel:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

		
	local screen = LuaConversationScreen(conversationScreen)
	
	local screenID = screen:getScreenID()
	
	print("screenID is " .. screenID)

	local player = LuaSceneObject(conversingPlayer)

	if ( screenID == "travelcoronet" ) then
		player:switchZone("corellia", -56.9, 28, -4705, 0)
	
	elseif ( screenID == "traveltheed" ) then
		player:switchZone("naboo", -4859.1, 6, 4162, 0)
	end			

	return conversationScreen

end
