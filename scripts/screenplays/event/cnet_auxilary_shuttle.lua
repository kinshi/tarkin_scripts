cnet_auxilary_shuttle = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("cnet_auxilary_shuttle", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------

function cnet_auxilary_shuttle:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
--		self:spawnSceneObjects()
	end
end

--spawn the Lambda shuttle & barker NPC

function cnet_auxilary_shuttle:spawnMobiles()

--	local pShuttle = spawnMobile("corellia", "lambda_shuttle", 1, -147.3, 28, -4781.8, 0, 0)
--	local shuttle = LuaCreatureObject(pShuttle)
--	shuttle:setOptionsBitmask(256)
--	shuttle:setPosture(PRONE)
	
	local pBarker = spawnMobile("corellia", "shuttleloc_barker", 1, -149, 28, -4706, 140, 0)
	local barker = LuaCreatureObject(pBarker)
	barker:setOptionsBitmask(256)
	self:barkShuttleLocation(pBarker)
	
end

--spawn the travel terminal players dbl click to travel

--function cnet_auxilary_shuttle:spawnSceneObjects()
--
--	local pCollector = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -149, 28, -4783 , 0, 1, 0, 0, 0)
--	local collector = LuaSceneObject(pCollector)
--	local col2creo = LuaCreatureObject(pCollector)
--	col2creo:setOptionsBitmask(264)
--	collector:setCustomObjectName("\\#ee3377Travel to Tyrena Starport")
--	createObserver(OBJECTRADIALUSED, "cnet_auxilary_shuttle", "teleportTyrena", pCollector)
--	
--end

--shuttle location barker

function cnet_auxilary_shuttle:barkShuttleLocation(pBarker)
	if (pBarker ~= nil) then
		spatialChat(pBarker, "\\#881100Attention Citizens!\n\nGCS - GALACTIC COMBAT SERIES 1 - PVP EVENT ( JUNE 9TH )NOW ACCEPTING REGISTRATIONS ON THE FORUMS or MESSAGE SAUPERA IN GAME WITH PROFESSION EMPLATE INFORMATION. RULES ON FORUMS.!")
		createEvent(15000, "cnet_auxilary_shuttle", "barkShuttleLocation", pBarker)
	end
end

--function cnet_auxilary_shuttle:teleportTyrena(pCollector, pPlayer)
--	local player = LuaSceneObject(pPlayer)
--	player:switchZone("corellia", -5003.0649, 0, -2228.3665, 0)
--end
