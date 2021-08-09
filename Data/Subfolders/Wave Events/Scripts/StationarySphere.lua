
local startPos = script.parent:GetWorldPosition()

function Tick()
	Task.Wait(1)
	script.parent:SetWorldPosition(startPos)
end