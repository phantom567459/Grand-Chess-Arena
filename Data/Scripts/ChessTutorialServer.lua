local playerChair = script:GetCustomProperty("Player_Chair"):WaitForObject()

Events.ConnectForPlayer("Start Tutorial", function(player)
    player.isMovementEnabled = false
	player.animationStance = "unarmed_sit_chair_upright"

    Task.Wait(.5)

	player:SetWorldPosition(playerChair:GetWorldPosition()+Vector3.New(-52,0,100))
	player:SetWorldRotation(playerChair:GetWorldRotation()+Rotation.New(0,0,90))
    
end)

Events.ConnectForPlayer("End Tutorial", function(player)
    player.isMovementEnabled = true
	player.animationStance = "unarmed_stance"

	player:SetWorldPosition(player:GetWorldPosition()+Vector3.FORWARD*100)
end)