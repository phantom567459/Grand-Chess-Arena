local blackSidePlayTrigger = script:GetCustomProperty("BlackSidePlayTrigger"):WaitForObject()
local whiteSidePlayTrigger = script:GetCustomProperty("WhiteSidePlayTrigger"):WaitForObject()
local whiteCamera = script:GetCustomProperty("WhiteCamera"):WaitForObject()
local blackCamera = script:GetCustomProperty("BlackCamera"):WaitForObject()
local dumpBoard = script:GetCustomProperty("DumpBoard"):WaitForObject()
local notationSheet = script:GetCustomProperty("NotationSheet"):WaitForObject()

function OnInteracted(whichTrigger, other)
	if other:IsA("Player") then
		--print(whichTrigger.name .. ": Trigger Interacted " .. other.name)
		if whichTrigger.name == "WhiteTrigger" then
			print("Player in Queue at Board", script.parent.parent.id)
			Events.BroadcastToServer("Player in Queue at ",script.parent.parent.id) --hard coded to the board object...
		end
		if whichTrigger.name == "BlackTrigger" then
			print("Player in Queue at Board", script.parent.parent.id)
			Events.BroadcastToServer("Player in Queue at ",script.parent.parent.id) --hard coded to the board object...
		end
	end
end

function startNewGame(board,side)
	--print(board,tostring(script.parent.parent.id))
	if board ~= tostring(script.parent.parent.id) then
		return 
	end

	print("CLIENT GAME STARTED")
	--print(board, side)
	local player = Game.GetLocalPlayer()
	if side == 1 then
		player:SetOverrideCamera(whiteCamera,1)
	else
		player:SetOverrideCamera(blackCamera,1)
	end
	--player.animationStance = "unarmed_sit_car_low"
	UI.SetCursorVisible(true)
	--dumpBoard.visibility = Visibility.FORCE_ON
	--notationSheet.visibility = Visibility.FORCE_ON
end

blackSidePlayTrigger.interactedEvent:Connect(OnInteracted)
whiteSidePlayTrigger.interactedEvent:Connect(OnInteracted)
Events.Connect("START GAME", startNewGame)
