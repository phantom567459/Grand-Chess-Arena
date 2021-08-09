local propSwing1 = script:GetCustomProperty("Swing1"):WaitForObject()
local propSwing2 = script:GetCustomProperty("Swing2"):WaitForObject()
local rotMax = script:GetCustomProperty("MaxRotation")
local hasSwingStarted,swing1Rot,swing2Rot

function Tick()
    swing1Rot = propSwing1:GetRotation().y
    swing2Rot = propSwing2:GetRotation().y

    if hasSwingStarted == nil then 
        propSwing1:RotateTo(Rotation.New(0,-rotMax,0),1.75)
        propSwing2:RotateTo(Rotation.New(0,rotMax,0),1.75)
        hasSwingStarted = 1
    end

    if math.floor(swing1Rot) <= -rotMax then 
        --propSwing1:RotateTo(Rotation.New(0,-20,0),1.75)
        propSwing1:StopRotate()
        propSwing1:RotateTo(Rotation.New(0,rotMax,0),1.75)
    elseif math.ceil(swing1Rot) >= rotMax then 
        propSwing1:StopRotate()
        propSwing1:RotateTo(Rotation.New(0,-rotMax,0),1.75)
    end

    if math.floor(swing2Rot) <= -rotMax then 
        --propSwing1:RotateTo(Rotation.New(0,-20,0),1.75)
        propSwing2:StopRotate()
        propSwing2:RotateTo(Rotation.New(0,rotMax,0),1.75)
    elseif math.ceil(swing2Rot) >= rotMax then 
        propSwing2:StopRotate()
        propSwing2:RotateTo(Rotation.New(0,-rotMax,0),1.75)
    end
end