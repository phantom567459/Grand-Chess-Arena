local Trigger1 = script:GetCustomProperty("Trigger1"):WaitForObject()
local Trigger2 = script:GetCustomProperty("Trigger2"):WaitForObject()
local propBlackChair = script:GetCustomProperty("BlackChair"):WaitForObject()
local propWhiteChair = script:GetCustomProperty("WhiteChair"):WaitForObject()

queue = {}
_G.games_in_progress = {}

function QueueForChessGame(player,data)
	local newgame
	local chessBoard = tostring(data)
	local newQueueValue = {board = chessBoard, player = player} --receive board/player data from client
	print("Player " .. player.name .. " sent data = " .. chessBoard)

	if (next(queue) == nil) then --if player is first one in queue, queue is nil
		print("INSERTED INTO QUEUE")
		table.insert(queue,newQueueValue)
	else
		for i, v in pairs(queue) do --now check to see if someone else is waiting at that board
			if newQueueValue.board == v.board then
				print("MATCH FOUND")
				table.remove(queue,i) --remove entry from table

				for j,k in pairs(queue) do --clean out player and board refs because they're taken
					if k.player == player then
						table.remove(queue,j)
					end 
					if tostring(k.board) == chessBoard then --need some logic here to inform player to queue up on another board, or maybe we just move them to another queue and forget board?
						table.remove(queue,j)
					end
				end
				
				--Make Triggers uninteractable
				Trigger1.isInteractable = false
				Trigger2.isInteractable = false
				--set up player accordingly to sit in seat
				player.isMovementEnabled = false
				player.animationStance = "unarmed_sit_chair_upright"

				v.player.isMovementEnabled = false
				v.player.animationStance = "unarmed_sit_chair_upright"

				Task.Wait(.5)


				local k = math.random(1,2)
				if (k == 1) then
					Events.BroadcastToPlayer(player, "START GAME", v.board,1) --broadcast to player they are white
					player.team = 1
					player:SetWorldPosition(propWhiteChair:GetWorldPosition()+Vector3.New(95,0,100))
					player:SetWorldRotation(propWhiteChair:GetWorldRotation()+Rotation.New(0,0,90))
					Events.BroadcastToPlayer(v.player, "START GAME", v.board,2) --broadcast to opponent they are black
					v.player.team = 2
					v.player:SetWorldPosition(propBlackChair:GetWorldPosition()+Vector3.New(-95,0,100))
					v.player:SetWorldRotation(propBlackChair:GetWorldRotation()+Rotation.New(0,0,90))

					newgame = {white = player, black = v.player,board = chessBoard} --first player is white
				else 
					Events.BroadcastToPlayer(v.player, "START GAME", v.board,1) --broadcast to opponent they are white
					v.player.team = 1
					v.player.lookControlMode = LookControlMode.RELATIVE
					v.player:SetWorldPosition(propWhiteChair:GetWorldPosition()+Vector3.New(95,0,100))
					player:SetWorldRotation(propWhiteChair:GetWorldRotation()+Rotation.New(0,0,90))
					Events.BroadcastToPlayer(player, "START GAME", v.board,2) --broadcast to player they are black
					player.team = 2
					player:SetWorldPosition(propBlackChair:GetWorldPosition()+Vector3.New(-95,0,100))
					player:SetWorldRotation(propBlackChair:GetWorldRotation()+Rotation.New(0,0,90))

					newgame = {white = v.player,black = player,board = chessBoard} --first player is white
				end
				Task.Wait(.5)
				table.insert(_G.games_in_progress,newgame)
				print(player.team,v.player.team)
				-- local playersTeam1 = Game.GetPlayers({includeTeams = 1})
				-- print("PLAYERS ON TEAM 1:",#playersTeam1)
				-- local playersTeam2 = Game.GetPlayers({includeTeams = 2})
				-- print("PLAYERS ON TEAM 2:",#playersTeam2)
				break
			else 
				table.insert(queue,newQueueValue)
			end
		end
	end
	--debug
end

function SetupBoard()
	--setupVirtualboard
	--1 = a1, 2 = a2, etc
	pieceStructre = defPieceStructure
	colorStructure = defColorStructure

end

function OnPlayerJoined(player)
	player.team = 0
end

Events.ConnectForPlayer("Player in Queue at ",QueueForChessGame)
Game.playerJoinedEvent:Connect(OnPlayerJoined)