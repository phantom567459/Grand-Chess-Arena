local propMerryGoRound = script:GetCustomProperty("MerryGoRound"):WaitForObject()
local rotSpd = script:GetCustomProperty("RotationSpeed")

propMerryGoRound:RotateContinuous(Rotation.New(0,0,180),rotSpd)