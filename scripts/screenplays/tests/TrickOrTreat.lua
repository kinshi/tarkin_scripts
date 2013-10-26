trick_convo_handler = Object:new {
	
	
 }


function trick_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
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
			
				nextConversationScreen = conversation:getScreen("trick")
			
	
		else
			
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
		
			print("optionLink fromn the last screen is .. " .. optionLink)
		
			nextConversationScreen = conversation:getScreen(optionLink)
			
		end
		

	
	end
	

	return nextConversationScreen
	
end


function trick_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

		
	local screen = LuaConversationScreen(conversationScreen)
	
	local screenID = screen:getScreenID()
	
	print("screenID is " .. screenID)
	
	if ( screenID == "trick" ) then
		local creature = LuaCreatureObject(conversingPlayer)
		local spawnpointX = creature:getWorldPositionX()
		local spawnpointY = creature:getWorldPositionY()
		local spawnZone = creature:getZoneName()

		local spiderOne = spawnMobile(spawnZone, "chasmal_spider", 360, spawnpointX, 12, spawnpointY, 169, 0)
		local spiderTwo = spawnMobile(spawnZone, "chasmal_spider", 360, spawnpointX, 12, spawnpointY, 169, 0)
		local spiderThree = spawnMobile(spawnZone, "chasmal_spider", 360, spawnpointX, 12, spawnpointY, 169, 0)

		local NPC = LuaSceneObject(conversingNPC)
		NPC:destroyObjectFromWorld()
		creature:sendSystemMessage("\\#ee3377It's a trick! Try again somewhere else!")

	end

	return conversationScreen


end




treat_convo_handler = Object:new {
	
	
 }


function treat_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
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
			
				nextConversationScreen = conversation:getScreen("treat")
			
	
		else
			
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
		
			print("optionLink fromn the last screen is .. " .. optionLink)
		
			nextConversationScreen = conversation:getScreen(optionLink)
			
		end
		

	
	end
	

	return nextConversationScreen
	
end


function treat_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

		
	local screen = LuaConversationScreen(conversationScreen)
	
	local screenID = screen:getScreenID()
	
	print("screenID is " .. screenID)
	
	if ( screenID == "treat" ) then
		local creature = LuaCreatureObject(conversingPlayer)
		
		creature:sendSystemMessage("\\#ee3377It's a treat! Enjoy your free 10,000 credits!")
		creature:addCashCredits(10000, true)
		
		local NPC = LuaSceneObject(conversingNPC)
		NPC:destroyObjectFromWorld()

	end

	return conversationScreen


end

