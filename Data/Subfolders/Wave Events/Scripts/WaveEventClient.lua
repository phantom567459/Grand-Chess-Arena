--[[
	WaveEventClient.lua
	- WaveParadigm

	This script parses serialized events written to the networked string "Events" on the WaveEventServer script.
]]--
print("Hello world, WaveEventClient")

local argumentSeparator = "]|["
local eventStringSeparator = "]~["
local tableSeparator = "]t["

local localPlayer = Game.GetLocalPlayer()

local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local SPHERE = script:GetCustomProperty("Sphere"):WaitForObject()
local LZW = require(script:GetCustomProperty("LZW"))

local warnOnNilObject = ROOT:GetCustomProperty("WarnOnNilObject")
local warnOnNilPlayer = ROOT:GetCustomProperty("WarnOnNilPlayer")

Task.Wait()
local lastProcessedEvent = SERVER_SCRIPT:GetCustomProperty("EventId")
Task.Wait()

--print("WaveEvent Client Initialized.")
-- Receive networked string Events and begin processing
function OnNetworkedPropertyChanged(obj, propName)
	if (propName == "Events") then
		ParseEvents(LZW.decompress(obj:GetCustomProperty(propName)))
	end
end
--SERVER_SCRIPT.networkedPropertyChangedEvent:Connect(OnNetworkedPropertyChanged)
SPHERE.networkedPropertyChangedEvent:Connect(OnNetworkedPropertyChanged)

-- Process a single event. Updates lastProcessedEvent, and 
function ProcessEvent(eventString)
	local event = {CoreString.Split(eventString, argumentSeparator)}
	local eventId = event[1]
	local eventName = event[2]
	local playerIds = event[3]
	
	local doProcess = false
	if (playerIds == "*") then
		doProcess = true
	else
		print(playerIds)
		local players = {CoreString.Split(playerIds, ",")}
		for _,pid in pairs(players) do
			if (pid == localPlayer.id) then
				doProcess = true
				break
			end
		end
	end
	
	-- If this event was not meant for us, simply mark it as processed and move on
	if (not doProcess) then
		lastProcessedEvent = tonumber(eventId)
		return
	end
	
	-- Parse the remaining arguments, then broadcast the eventName with those arguments.
	local parsedArgs = {}
	for i = 4, #event, 1 do
		-- iterate through all sent arguments, deserialize them, then broadcast eventName with those args
		local parsedArg = ParseArgument(event[i])
		parsedArgs[#parsedArgs + 1] = parsedArg
	end
	
	Events.Broadcast(eventName, table.unpack(parsedArgs))
	
	lastProcessedEvent = tonumber(eventId)
end

-- Receive the full networked Events string and parse out only new events which need to be processed.
function ParseEvents(eventString)
	local events = {CoreString.Split(eventString, eventStringSeparator)}
	local eventsToProcess = {}
	
	local i = 1
	local newEvents = true
	while (newEvents) do
		if (i > #events) then
			newEvents = false
			break
		end
		
		local event = {CoreString.Split(events[i], argumentSeparator)}
		local eventId = event[1]
		if (tonumber(eventId) > lastProcessedEvent) then
			eventsToProcess[#eventsToProcess + 1] = events[i]
			i = i + 1
		else
			newEvents = false
		end
	end
	
	-- populated eventsToProcess with only new events, iterate through that in reverse to actually process
	for j = #eventsToProcess, 1, -1 do
		ProcessEvent(eventsToProcess[j])
		--Task.Wait()
	end
end

-- Conditional logic to deserialize string representations of different data types
-- As of this writing, supports:
-- string, number, CoreObject, Player, Vector2, Vector3, Vector4, Rotation, Quaternion, 1d table (list), Transform, Color, nil
-- If given stHello world!, will return "Hello world!"
-- If given co4hf8734hf8743h322, will return the object with that ID, if found.
function ParseArgument(arg)
	if (StartsWith(arg, "st")) then
		return arg:sub(#"st" + 1, #arg)
	elseif (StartsWith(arg, "nu")) then
		return tonumber(arg:sub(#"nu" + 1, #arg))
	elseif (StartsWith(arg, "bo")) then
		return arg == "botrue"
	elseif (StartsWith(arg, "co")) then
		local cid = arg:sub(#"co" + 1, #arg)
		local obj = World.FindObjectById(cid)
		if (not obj and warnOnNilObject) then
			warn("WaveEvent unable to find a provided CoreObject by Id.")
		end
		
		if (not obj) then return false end -- crunching nil down to false to ensure it doesn't get lost
		return obj
	elseif (StartsWith(arg, "pl")) then
		local pid = arg:sub(#"pl" + 1, #arg)
		local player = Game.FindPlayer(pid)
		if (not player and warnOnNilPlayer) then
			warn("WaveEvent unable to find provided Player by Id.")
		end
		
		if (not player) then return false end -- crunching nil down to false to ensure it doesn't get lost
		return player
	elseif (StartsWith(arg, "v3")) then
		local content = arg:sub(#"v3" + 1, #arg)
		local vals = {CoreString.Split(content, ",")}
		return Vector3.New(tonumber(vals[1]), tonumber(vals[2]), tonumber(vals[3]))
	elseif (StartsWith(arg, "ro")) then
		local content = arg:sub(#"ro" + 1, #arg)
		local vals = {CoreString.Split(content, ",")}
		return Rotation.New(tonumber(vals[1]), tonumber(vals[2]), tonumber(vals[3]))
	elseif (StartsWith(arg, "qu")) then
		local content = arg:sub(#"qu" + 1, #arg)
		local vals = {CoreString.Split(content, ",")}
		return Quaternion.New(tonumber(vals[1]), tonumber(vals[2]), tonumber(vals[3]), tonumber(vals[4]))
	elseif (StartsWith(arg, "ta")) then
		local content = arg:sub(#"ta" + 1, #arg)
		local tableElems = {CoreString.Split(content, tableSeparator)}
		local parsedTable = {}
		for _,e in pairs(tableElems) do
			local parsedElem = ParseArgument(e)
			parsedTable[#parsedTable + 1] = parsedElem
		end
		
		return parsedTable
	elseif (StartsWith(arg, "tr")) then
		local content = arg:sub(#"tr" + 1, #arg)
		local vals = {CoreString.Split(content, ",")}
		return Transform.New(Quaternion.New(tonumber(vals[4]), tonumber(vals[5]), tonumber(vals[6]), tonumber(vals[7])),
							 Vector3.New(tonumber(vals[1]), tonumber(vals[2]), tonumber(vals[3])),
							 Vector3.New(tonumber(vals[8]), tonumber(vals[9]), tonumber(vals[10])))
	elseif (StartsWith(arg, "cl")) then
		local content = arg:sub(#"cl" + 1, #arg)
		local vals = {CoreString.Split(content, ",")}
		return Color.New(tonumber(vals[1]), tonumber(vals[2]), tonumber(vals[3]), tonumber(vals[4]))
	elseif (StartsWith(arg, "v4")) then
		local content = arg:sub(#"v4" + 1, #arg)
		local vals = {CoreString.Split(content, ",")}
		return Vector4.New(tonumber(vals[1]), tonumber(vals[2]), tonumber(vals[3]), tonumber(vals[4]))
	elseif (StartsWith(arg, "v2")) then
		local content = arg:sub(#"v2" + 1, #arg)
		local vals = {CoreString.Split(content, ",")}
		return Vector2.New(tonumber(vals[1]), tonumber(vals[2]))
	end
end

-- Returns true if str starts with prefix, false otherwise.
function StartsWith(str, prefix)
	return str:sub(1, #prefix) == prefix
end
