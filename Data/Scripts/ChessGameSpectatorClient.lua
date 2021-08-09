local spectatorTrigger = script:GetCustomProperty("SpectatorTrigger"):WaitForObject()

function OnInteracted(whichTrigger, other)
	if other:IsA("Player") then
		print("Spectator Requested at", script.parent.parent.id)
		Events.BroadcastToServer("Spectator at",script.parent.parent.id) --hard coded to the board object...
	end
end

spectatorTrigger.interactedEvent:Connect(OnInteracted)