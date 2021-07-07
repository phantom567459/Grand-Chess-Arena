_G.queue = {}
_G.games_in_progress = {}

function QueueForChessGame(player,data)
	local newgame
	local chessBoard = tostring(data)
	local newQueueValue = {board = chessBoard, player = player} --receive board/player data from client
	print("Player " .. player.name .. " sent data = " .. chessBoard)

	if (next(_G.queue) == nil) then --if player is first one in queue, queue is nil
		print("INSERTED INTO QUEUE")
		table.insert(_G.queue,newQueueValue)
	else
		for i, v in pairs(_G.queue) do --now check to see if someone else is waiting at that board
			if not World.FindObjectById(chessBoard) then
				print("ERROR")
				return
			end

			if newQueueValue.board == v.board and newQueueValue.player ~= v.player then
				print("MATCH FOUND")
				local boardParent = World.FindObjectById(chessBoard)
				local propWhiteChair = boardParent:FindChildByName("WhiteChair")
				local propBlackChair = boardParent:FindChildByName("BlackChair")
				local Trigger1 = propWhiteChair:FindChildByName("WhiteTrigger")
				local Trigger2 = propBlackChair:FindChildByName("BlackTrigger")
	
				table.remove(_G.queue,i) --remove entry from table

				for j,k in pairs(_G.queue) do --clean out player and board refs because they're taken
					if k.player == player then
						_G.queue[j] = nil
						--table.remove(_G.queue,j)
						print("DELETED recent player")
					elseif k.player == v.player then 
						_G.queue[j] = nil
						--table.remove(_G.queue,j)
						print("DELETED old player")
					elseif tostring(k.board) == chessBoard then --need some logic here to inform player to queue up on another board, or maybe we just move them to another queue and forget board?
						_G.queue[j] = nil
						--table.remove(_G.queue,j)
						print("REMOVED board ref")
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
					v.player:SetWorldPosition(propWhiteChair:GetWorldPosition()+Vector3.New(95,0,100))
					v.player:SetWorldRotation(propWhiteChair:GetWorldRotation()+Rotation.New(0,0,90))
					Events.BroadcastToPlayer(player, "START GAME", v.board,2) --broadcast to player they are black
					player.team = 2
					player:SetWorldPosition(propBlackChair:GetWorldPosition()+Vector3.New(-95,0,100))
					player:SetWorldRotation(propBlackChair:GetWorldRotation()+Rotation.New(0,0,90))

					newgame = {white = v.player,black = player,board = chessBoard} --first player is white
				end
				Task.Wait(.5)
				table.insert(_G.games_in_progress,newgame)
				print(player.team,v.player.team)
				return
				-- local playersTeam1 = Game.GetPlayers({includeTeams = 1})
				-- print("PLAYERS ON TEAM 1:",#playersTeam1)
				-- local playersTeam2 = Game.GetPlayers({includeTeams = 2})
				-- print("PLAYERS ON TEAM 2:",#playersTeam2)
			elseif newQueueValue.board == v.board and newQueueValue.player ~= v.player then 
				--duplicate value, exit
				return
			end
		end
		table.insert(_G.queue,newQueueValue)
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