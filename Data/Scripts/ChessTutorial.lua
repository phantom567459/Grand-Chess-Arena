local Dialogue_System = require(script:GetCustomProperty("Dialogue_System"))

local tutorialMan = script:GetCustomProperty("Tutorial_Man"):WaitForObject()
local tutorialChair = script:GetCustomProperty("Tutorial_Chair"):WaitForObject()
local propTutorialCam = script:GetCustomProperty("TutorialCam"):WaitForObject()

local squares = script:GetCustomProperty("Squares"):WaitForObject()
local whitePieces = script:GetCustomProperty("White"):WaitForObject()
local blackPieces = script:GetCustomProperty("Black"):WaitForObject()

local white = whitePieces:GetChildren()
local black = blackPieces:GetChildren()

DEFAULT_PIECE_POSITIONS_WHITE = {}
DEFAULT_PIECE_POSITIONS_BLACK = {}

for x,z in ipairs(white) do 
    DEFAULT_PIECE_POSITIONS_WHITE[x] = white[x]:GetWorldPosition()
end

for x,z in ipairs(black) do 
    DEFAULT_PIECE_POSITIONS_BLACK[x] = black[x]:GetWorldPosition()
end

function CleanBoard()
    for i,v in pairs(white) do 
        white[i].visibility = Visibility.FORCE_OFF
        black[i].visibility = Visibility.FORCE_OFF
    end
end

Events.Connect("tutorial_started", function(choice)
    StartTutorial()
end)

Events.Connect("tutorial_ended", function(choice)
    EndTutorial()
end)

Events.Connect("loop_back",function(conversation)
    
end)

Events.Connect("show_pawn_move_1", function(var)
    CleanBoard()
    ShowPawnMoves(1)
end)

Events.Connect("show_pawn_move_2", function(var)
    CleanBoard()
    ShowPawnMoves(2)
end)

Events.Connect("show_pawn_move_3", function(var)
    CleanBoard()
    ShowPawnMoves(3)
end)

Events.Connect("show_knight_move", function(var)
    CleanBoard()
    ShowKnightMoves()
end)

Events.Connect("show_bishop_move", function(var)
    CleanBoard()
    ShowBishopMoves()
end)
Events.Connect("show_queen_move", function(var)
    CleanBoard()
    ShowQueenMoves()
end)
Events.Connect("show_king_move", function(var)
    CleanBoard()
    ShowKingMoves()
end)
Events.Connect("show_rook_move", function(var)
    CleanBoard()
    ShowRookMoves()
end)
Events.Connect("show_special_1", function(var)
    CleanBoard()
    ShowSpecialMoves(1)
end)
Events.Connect("show_special_2", function(var)
    CleanBoard()
    ShowSpecialMoves(2)
end)

function StartTutorial()
    local player = Game.GetLocalPlayer()
    player:SetOverrideCamera(propTutorialCam, 1)

    Events.BroadcastToServer("Start Tutorial")
end

function ShowPawnMoves(index)
    --index 1 is normal move
    --take white[13]
    if index == 1 then
        white[13]:SetWorldPosition(squares:FindDescendantByName("E2"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[13].visibility = Visibility.FORCE_ON
        Task.Wait(1)
        white[13]:MoveTo(squares:FindDescendantByName("E3"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    end
    --index 2 is double pawn move
    if index == 2 then 
        white[13]:SetWorldPosition(squares:FindDescendantByName("E2"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[13].visibility = Visibility.FORCE_ON
        Task.Wait(1)
        white[13]:MoveTo(squares:FindDescendantByName("E4"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    end
    --index 3 is capture
    if index == 3 then 
        white[13]:SetWorldPosition(squares:FindDescendantByName("E4"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        black[12]:SetWorldPosition(squares:FindDescendantByName("E5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        black[13]:SetWorldPosition(squares:FindDescendantByName("D5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[13].visibility = Visibility.FORCE_ON
        black[12].visibility = Visibility.FORCE_ON
        black[13].visibility = Visibility.FORCE_ON
        Task.Wait(1)
        white[13]:MoveTo(squares:FindDescendantByName("D5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        Task.Wait(.5)
        black[13].visibility = Visibility.FORCE_OFF
    end
end

function ShowRookMoves()
    white[1]:SetWorldPosition(squares:FindDescendantByName("E4"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    black[12]:SetWorldPosition(squares:FindDescendantByName("B7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    white[1].visibility = Visibility.FORCE_ON
    black[12].visibility = Visibility.FORCE_ON
    Task.Wait(1.5)
    white[1]:MoveTo(squares:FindDescendantByName("E7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(1.5)
    white[1]:MoveTo(squares:FindDescendantByName("B7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(.15)
    black[12].visibility = Visibility.FORCE_OFF
end

function ShowKnightMoves()
    white[2]:SetWorldPosition(squares:FindDescendantByName("E4"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    black[12]:SetWorldPosition(squares:FindDescendantByName("D7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    white[2].visibility = Visibility.FORCE_ON
    black[12].visibility = Visibility.FORCE_ON
    Task.Wait(1.5)
    white[2]:MoveTo(squares:FindDescendantByName("C5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(1.5)
    white[2]:MoveTo(squares:FindDescendantByName("D7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(.15)
    black[12].visibility = Visibility.FORCE_OFF
    Task.Wait(1.5)
    white[2]:MoveTo(squares:FindDescendantByName("F6"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(1.5)
    white[2]:MoveTo(squares:FindDescendantByName("G4"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(1.5)
    white[2]:MoveTo(squares:FindDescendantByName("E3"):GetWorldPosition()+Vector3.New(0,0,5),.5)
end

function ShowBishopMoves()
    white[3]:SetWorldPosition(squares:FindDescendantByName("F3"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    black[12]:SetWorldPosition(squares:FindDescendantByName("F7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    white[3].visibility = Visibility.FORCE_ON
    black[12].visibility = Visibility.FORCE_ON
    Task.Wait(1.5)
    white[3]:MoveTo(squares:FindDescendantByName("D5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(1.5)
    white[3]:MoveTo(squares:FindDescendantByName("F7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(.15)
    black[12].visibility = Visibility.FORCE_OFF
    Task.Wait(1.5)
    white[3]:MoveTo(squares:FindDescendantByName("H5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
end

function ShowQueenMoves()
    white[4]:SetWorldPosition(squares:FindDescendantByName("E4"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    black[12]:SetWorldPosition(squares:FindDescendantByName("E7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    black[13]:SetWorldPosition(squares:FindDescendantByName("A7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    black[8]:SetWorldPosition(squares:FindDescendantByName("F2"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    white[4].visibility = Visibility.FORCE_ON
    black[12].visibility = Visibility.FORCE_ON
    black[13].visibility = Visibility.FORCE_ON
    black[8].visibility = Visibility.FORCE_ON
    Task.Wait(1.5)
    white[4]:MoveTo(squares:FindDescendantByName("E7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(.15)
    black[12].visibility = Visibility.FORCE_OFF
    Task.Wait(1.5)
    white[4]:MoveTo(squares:FindDescendantByName("A7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(.15)
    black[13].visibility = Visibility.FORCE_OFF
    Task.Wait(1.5)
    white[4]:MoveTo(squares:FindDescendantByName("F2"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(.15)
    black[8].visibility = Visibility.FORCE_OFF
end

function ShowKingMoves()
    white[5]:SetWorldPosition(squares:FindDescendantByName("F3"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    black[12]:SetWorldPosition(squares:FindDescendantByName("E5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    white[5].visibility = Visibility.FORCE_ON
    black[12].visibility = Visibility.FORCE_ON
    Task.Wait(1.5)
    white[5]:MoveTo(squares:FindDescendantByName("E4"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(1.5)
    white[5]:MoveTo(squares:FindDescendantByName("E5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
    Task.Wait(.15)
    black[12].visibility = Visibility.FORCE_OFF
end

function ShowSpecialMoves(index) 
    if index == 1 then
        white[1]:SetWorldPosition(squares:FindDescendantByName("A1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[5]:SetWorldPosition(squares:FindDescendantByName("E1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[8]:SetWorldPosition(squares:FindDescendantByName("H1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[1].visibility = Visibility.FORCE_ON
        white[5].visibility = Visibility.FORCE_ON
        white[8].visibility = Visibility.FORCE_ON
        Task.Wait(1.5)
        white[8]:MoveTo(squares:FindDescendantByName("F1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[5]:MoveTo(squares:FindDescendantByName("G1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        Task.Wait(2)
        white[5]:SetWorldPosition(squares:FindDescendantByName("E1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[8]:SetWorldPosition(squares:FindDescendantByName("H1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        Task.Wait(1.5)
        white[1]:MoveTo(squares:FindDescendantByName("D1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[5]:MoveTo(squares:FindDescendantByName("C1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        Task.Wait(.5)
    end 
    if index == 2 then
        white[13]:SetWorldPosition(squares:FindDescendantByName("E5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        black[12]:SetWorldPosition(squares:FindDescendantByName("D7"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        white[13].visibility = Visibility.FORCE_ON
        black[12].visibility = Visibility.FORCE_ON
        Task.Wait(1.5)
        black[12]:MoveTo(squares:FindDescendantByName("D5"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        Task.Wait(1.5)
        white[13]:MoveTo(squares:FindDescendantByName("D6"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        Task.Wait(.5)
        black[12].visibility = Visibility.FORCE_OFF
    end 
end

function EndTutorial()
    local player = Game.GetLocalPlayer()
    player:ClearOverrideCamera()

    Events.BroadcastToServer("End Tutorial")
end