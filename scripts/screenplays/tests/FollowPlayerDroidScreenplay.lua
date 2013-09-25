FollowPlayerDroidScreenplay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "FollowPlayerDroidScreenplay",
}

registerScreenPlay("FollowPlayerDroidScreenplay", true)

function FollowPlayerDroidScreenplay:start()
	local pNpc = spawnMobile("tatooine", "gm_pet_vendor", 1, 200, 12.0, 12, -173, 0 )
	local collector = LuaSceneObject(pNpc)
	collector:setCustomObjectName("\\#ee3377Pet Droid")
	local col2creo = LuaCreatureObject(pNpc)
end


pet = Object:new {
	
	
 }


function pet:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
	
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
			
				nextConversationScreen = conversation:getScreen("first_screen")
			
	
		else
			
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
		
			print("optionLink fromn the last screen is .. " .. optionLink)
		
			nextConversationScreen = conversation:getScreen(optionLink)
			
		end
		

	
	end
	

	return nextConversationScreen
	
end

function pet:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

		
	local screen = LuaConversationScreen(conversationScreen)
	
	local screenID = screen:getScreenID()
	
	print("screenID is " .. screenID)

	local player = LuaSceneObject(conversingPlayer)

	if ( screenID == "stormtrooper" ) then
		local creature = LuaCreatureObject(conversingPlayer)
		local spawnpointX = creature:getWorldPositionX()
		local spawnpointY = creature:getWorldPositionY()
		local spawnpointZ = creature:getWorldPositionZ()

		local mobileOne = spawnMobile("corellia", "stormtrooper", 360, spawnpointX, 12, spawnpointY, 169, 0)

		local npc = LuaAiAgent(mobileOne)
		npc:setFollowObject(conversingPlayer)


	elseif ( screenID == "jabba" ) then
		local creature = LuaCreatureObject(conversingPlayer)
		local spawnpointX = creature:getWorldPositionX()
		local spawnpointY = creature:getWorldPositionY()
		local spawnpointZ = creature:getWorldPositionZ()

		local mobileOne = spawnMobile("corellia", "jabba_the_hutt2", 360, spawnpointX, 12, spawnpointY, 169, 0)

		local npc = LuaAiAgent(mobileOne)
		npc:setFollowObject(conversingPlayer)

	
	elseif ( screenID == "atst" ) then
		local creature = LuaCreatureObject(conversingPlayer)
		local spawnpointX = creature:getWorldPositionX()
		local spawnpointY = creature:getWorldPositionY()
		local spawnpointZ = creature:getWorldPositionZ()

		local mobileOne = spawnMobile("corellia", "at_st", 360, spawnpointX, 12, spawnpointY, 169, 0)

		local npc = LuaAiAgent(mobileOne)
		npc:setFollowObject(conversingPlayer)


	end			

	return conversationScreen

end
