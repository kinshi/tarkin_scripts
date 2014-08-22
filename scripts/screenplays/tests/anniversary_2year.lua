anniversary2_screenplay = ScreenPlay:new { 
	numberOfActs = 1,
	questString = "anniversary_2", 
	states = {
		accepted = 2,	
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
}

registerScreenPlay("anniversary2_screenplay", true)

function anniversary2_screenplay:start() 
	printf("anniversary2_screenplay.screenplaystart\n")

	local pNpc = spawnMobile("naboo", "painting_artist", 1, -3977.8, -135.6, 4388.6, -2, 0 )
	local collector = LuaSceneObject(pNpc)
	collector:setCustomObjectName("Raavi Or'Zeth (an artist)")
	local col2creo = LuaCreatureObject(pNpc)
end


function anniversary2_screenplay:getActivePlayerName()
	return self.questdata.activePlayerName
end



function anniversary2_screenplay:setActivePlayerName(playerName)
	print("Changing playername from " .. self.questdata.activePlayerName .. " to " .. playerName)
	self.questdata.activePlayerName = playerName
end



anniversary2_convo_handler = Object:new {
	tstring = "myconversation"	
	
 }


function anniversary2_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
	
	print("------------------------------\n")
	
	-- now let's get the last conversation to really determine whether or not we're in the first
	-- screen
	
	local player = LuaCreatureObject(conversingPlayer)
	local convosession = player:getConversationSession()
	
	lastConversation = nil
	
	
	print("getNextConversation() called")
	
	local conversation = LuaConversationTemplate(conversationTemplate)
	local nextConversationScreen 
	
	
	if (conversation ~= nil) then
		
		-- checking to see if we have a next screen
		if (convosession ~= nil) then
			 local session = LuaConversationSession(convosession)
			 if (session ~= nil) then
			 	print("casting getlastconversationsreen()")
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
		end
		
		
		if (lastConversationScreen == nil) then
			print("Last conversation is null.  let's try to get the first screen")
			local hasAccepted = player:hasScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			print("hasAccepted() is " .. hasAccepted) 

			if (hasAccepted == 0) then
				print("no screenplaystate so must not have accepted it yet")
				nextConversationScreen = conversation:getScreen("first_screen")
				
			elseif (hasAccepted == 1) then
				nextConversationScreen = conversation:getScreen("done")
			end		
			
		else
			
		local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
		local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
		print("optionLink from the last screen is .. " .. optionLink)

		local pInv = player:getSlottedObject("inventory")	
		local inventory = LuaSceneObject(pInv)
			if (optionLink ~= "first_screen" and inventory:hasFullContainerObjects()==true) then
				optionLink = "insufficient_space"
				player:sendSystemMessage("You do not have enough inventory space")
			end
			
			print("optionLink is now .. " .. optionLink)
			nextConversationScreen = conversation:getScreen(optionLink)
			
			
		end
		
	
	end
	

	return nextConversationScreen
	
end

function anniversary2_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

	local conversation = LuaConversationTemplate(conversationTemplate)
	local nextConversationScreen	
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	local player = LuaCreatureObject(conversingPlayer)
	local taker = LuaSceneObject(conversingPlayer)
	local playerInv = LuaSceneObject(conversingPlayer)
	local pInv = playerInv:getSlottedObject("inventory")


	print("screenID is " .. screenID)
	if (screenID =="insufficient_space") then
		nextConversationScreen = conversation:getScreen("insufficient_space")
	elseif (screenID == "painting_01") then
		local pItem = giveItem(pInv, "object/tangible/veteran_reward/one_year_anniversary/painting_01.iff", -1)
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			end
	elseif (screenID == "painting_02") then	
		local pItem = giveItem(pInv, "object/tangible/veteran_reward/one_year_anniversary/painting_02.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			end
	elseif (screenID == "painting_03") then
		local pItem = giveItem(pInv, "object/tangible/veteran_reward/one_year_anniversary/painting_03.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			end	
	elseif (screenID == "painting_04") then
		local pItem = giveItem(pInv, "object/tangible/veteran_reward/one_year_anniversary/painting_04.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			end	
	elseif (screenID == "painting_05") then
		local pItem = giveItem(pInv, "object/tangible/veteran_reward/one_year_anniversary/painting_05.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			end	
	elseif (screenID == "painting_06") then
		local pItem = giveItem(pInv, "object/tangible/veteran_reward/one_year_anniversary/painting_06.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			end	
	elseif (screenID == "painting_07") then
		local pItem = giveItem(pInv, "object/tangible/veteran_reward/one_year_anniversary/painting_07.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			end	
	elseif (screenID == "painting_08") then
		local pItem = giveItem(pInv, "object/tangible/veteran_reward/one_year_anniversary/painting_08.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			end	
	elseif (screenID == "painting_09") then
		local pItem = giveItem(pInv, "object/tangible/veteran_reward/one_year_anniversary/painting_09.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
			end				
	elseif (screenID == "barc_speeder") then
			local pItem = giveItem(pInv, "object/tangible/deed/vehicle_deed/barc_speeder_deed.iff", -1)	
				if (pItem ~= nil) then	
					local item = LuaSceneObject(pItem)	
					item:sendTo(player:_getObject())
					player:sendSystemMessage("Thanks for playing with us!")
					player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
				end
	

	elseif (screenID == "flash_speeder") then
			local pItem = giveItem(pInv, "object/tangible/deed/vehicle_deed/speederbike_flash_deed.iff", -1)	
				if (pItem ~= nil) then	
					local item = LuaSceneObject(pItem)	
					item:sendTo(player:_getObject())
					player:sendSystemMessage("Thanks for playing with us!")
					player:setScreenPlayState(anniversary2_screenplay.states.accepted, anniversary2_screenplay.questString)
				end
	end

	return conversationScreen

end
