local chessGameNewServer = script:GetCustomProperty("ChessGameNewServer")
local Trigger1 = script:GetCustomProperty("Trigger1"):WaitForObject()
local Trigger2 = script:GetCustomProperty("Trigger2"):WaitForObject()
local propBlackChair = script:GetCustomProperty("BlackChair"):WaitForObject()
local propWhiteChair = script:GetCustomProperty("WhiteChair"):WaitForObject()

function SendToServer(player,data,Trigger1,Trigger2,propWhiteChair,propBlackChair)
    QueueForChessGame(player,data,Trigger1,Trigger2,propWhiteChair,propBlackChair)
end

Events.ConnectForPlayer("Player in Queue at ",SendToServer)