anniversary_screenplay = ScreenPlay:new { 
	numberOfActs = 1,
	questString = "dotday", 
	states = {
		accepted = 2,
		bonus = 4,	
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
}

registerScreenPlay("anniversary_screenplay", true)

function anniversary_screenplay:start() 
	printf("anniversary_screenplay.screenplaystart\n")

	local pNpc = spawnMobile("naboo", "intro_droid", 1, -4881, 6.0, 4150, 35, 0 )
	local collector = LuaSceneObject(pNpc)
	collector:setCustomObjectName("\\#ee3377DOT-Day Vendor")
	local col2creo = LuaCreatureObject(pNpc)
end

--function anniversary_screenplay:givejetpack(pNpc, pPlayer)
--	if (pPlayer ~= nil) then
--		local player = LuaCreatureObject(pPlayer)
--		local playerInv = LuaSceneObject(pPlayer)
	--	local pInv = playerInv:getSlottedObject("inventory")	
--		local pItem = giveItem(pInv, "object/tangible/deed/vehicle_deed/jetpack_deed.iff", -1)	
--			if (pItem ~= nil) then	
--				local item = LuaSceneObject(pItem)	
--				item:sendTo(player:_getObject())
--				player:sendSystemMessage("Thanks for playing with us!")	
--			end	
--		end
--end

function anniversary_screenplay:getActivePlayerName()

	return self.questdata.activePlayerName
end
function anniversary_screenplay:setActivePlayerName(playerName)

	print("Changing playername from " .. self.questdata.activePlayerName .. " to " .. playerName)
	self.questdata.activePlayerName = playerName
	
end



anniversary = Object:new {
	
	
 }


function anniversary:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
	
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
			local resourcedeed = creature:hasScreenPlayState(anniversary_screenplay.states.bonus, anniversary_screenplay.questString)
			
			print("hasAccepted() is " .. hasAccepted) 

			if ( hasAccepted == 0 ) then
			
				print("no screenplaystate so must not have accepted it yet")
				--nextConversationScreen = conversation:getInitialScreen()
				nextConversationScreen = conversation:getScreen("first_screen")
				--self:addQuestOptions(nextConversationScreen)
				
			elseif ( resourcedeed == 1 ) then
				nextConversationScreen = conversation:getScreen("done")

			elseif ( resourcedeed == 0 ) then
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

function anniversary:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

		
	local screen = LuaConversationScreen(conversationScreen)
	
	local screenID = screen:getScreenID()
	
	print("screenID is " .. screenID)

	if ( screenID == "vader_victory" ) then
		local player = LuaCreatureObject(conversingPlayer)
		local taker = LuaSceneObject(conversingPlayer)
		local playerInv = LuaSceneObject(conversingPlayer)
		local pInv = playerInv:getSlottedObject("inventory")	
		local pItem = giveItem(pInv, "object/tangible/furniture/jedi/frn_all_dark_chair_s01.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary_screenplay.states.accepted, anniversary_screenplay.questString)
			end		

	elseif ( screenID == "falcon_chair" ) then
		local player = LuaCreatureObject(conversingPlayer)
		local taker = LuaSceneObject(conversingPlayer)
		local playerInv = LuaSceneObject(conversingPlayer)
		local pInv = playerInv:getSlottedObject("inventory")	
		local pItem = giveItem(pInv, "object/tangible/furniture/jedi/frn_all_light_chair_s01.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(anniversary_screenplay.states.accepted, anniversary_screenplay.questString)
			end

	elseif ( screenID == "flash_speeder" ) then
			local player = LuaCreatureObject(conversingPlayer)
			local taker = LuaSceneObject(conversingPlayer)
			local playerInv = LuaSceneObject(conversingPlayer)
			local pInv = playerInv:getSlottedObject("inventory")	
			local pItem = giveItem(pInv, "object/tangible/deed/vehicle_deed/speederbike_flash_deed.iff", -1)	
				if (pItem ~= nil) then	
					local item = LuaSceneObject(pItem)	
					item:sendTo(player:_getObject())
					player:sendSystemMessage("Thanks for playing with us!")
					player:setScreenPlayState(anniversary_screenplay.states.accepted, anniversary_screenplay.questString)
			end

	elseif ( screenID == "resourcedeed" ) then
			local player = LuaCreatureObject(conversingPlayer)
			local taker = LuaSceneObject(conversingPlayer)
			local playerInv = LuaSceneObject(conversingPlayer)
			local pInv = playerInv:getSlottedObject("inventory")	
			local pItem = giveItem(pInv, "object/tangible/veteran_reward/resource.iff", -1)	
				if (pItem ~= nil) then	
					local item = LuaSceneObject(pItem)	
					item:sendTo(player:_getObject())
					player:sendSystemMessage("Thanks for your continued support!")
					player:setScreenPlayState(anniversary_screenplay.states.bonus, anniversary_screenplay.questString)
			end

		end
	
	return conversationScreen

end
