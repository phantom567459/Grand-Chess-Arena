Name: "Chessboard v1_15"
RootId: 17481209101891147507
Objects {
  Id: 8660291179651440274
  Name: "CollisionCube"
  Transform {
    Location {
      X: -21.7111816
      Y: 23.9469
      Z: 134.956085
    }
    Rotation {
    }
    Scale {
      X: 2.40389872
      Y: 2.45135713
      Z: 4.57504
    }
  }
  ParentId: 17481209101891147507
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 15049172941536767897
  Name: "UtilityFunc"
  Transform {
    Location {
      X: 1133
      Y: -1725
      Z: -103
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17481209101891147507
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 6692278755796866025
    }
  }
  InstanceHistory {
    SelfId: 15049172941536767897
    SubobjectId: 14107397660112796207
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 16895677086702519603
  Name: "ServerContext"
  Transform {
    Location {
      X: 1133
      Y: -1725
      Z: -103
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17481209101891147507
  ChildIds: 10011979739531443806
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  NetworkContext {
    Type: Server
  }
  InstanceHistory {
    SelfId: 16895677086702519603
    SubobjectId: 17971452306907418757
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 10011979739531443806
  Name: "ChessGameRules"
  Transform {
    Location {
      X: -1133
      Y: 1725
      Z: 103
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16895677086702519603
  UnregisteredParameters {
    Overrides {
      Name: "cs:ChessGameNewServer"
      ObjectReference {
        SelfId: 16456094419976568597
      }
    }
    Overrides {
      Name: "cs:Trigger1"
      ObjectReference {
        SelfId: 10250868600901217085
      }
    }
    Overrides {
      Name: "cs:Trigger2"
      ObjectReference {
        SelfId: 13316712638970642465
      }
    }
    Overrides {
      Name: "cs:UtilityFunc"
      AssetReference {
        Id: 6692278755796866025
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 13349268452215359476
    }
  }
  InstanceHistory {
    SelfId: 10011979739531443806
    SubobjectId: 11092188740895304680
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 7856242679720591712
  Name: "ClientContext"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17481209101891147507
  ChildIds: 14657208999810201330
  ChildIds: 5082765776119273034
  ChildIds: 15279035605450093862
  ChildIds: 5717955329696222322
  ChildIds: 18047848671796056105
  ChildIds: 11994234212324883865
  ChildIds: 219538731183617982
  ChildIds: 16873920282989044967
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 7856242679720591712
    SubobjectId: 9086038038450623702
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 16873920282989044967
  Name: "VFX"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7856242679720591712
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "VFX_15"
  }
}
Objects {
  Id: 219538731183617982
  Name: "UI"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7856242679720591712
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "UI_16"
  }
  InstanceHistory {
    SelfId: 219538731183617982
    SubobjectId: 1158860186038346248
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 11994234212324883865
  Name: "SFX"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7856242679720591712
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "SFX_16"
  }
  InstanceHistory {
    SelfId: 11994234212324883865
    SubobjectId: 13072533636836567087
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 18047848671796056105
  Name: "BlackCamera"
  Transform {
    Location {
      X: 54
      Y: 18.1018066
      Z: 62
    }
    Rotation {
      Pitch: -50
      Yaw: 180
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7856242679720591712
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Camera {
    FreeControl: true
    InitialDistance: 50
    IsDistanceAdjustable: true
    MaxDistance: 200
    PositionOffset {
    }
    RotationOffset {
    }
    FieldOfView: 90
    ViewWidth: 1200
    RotationMode {
      Value: "mc:erotationmode:default"
    }
    MinPitch: -10
    MaxPitch: 80
    IsYawLimited: true
    MinYaw: -50
    MaxYaw: 50
    DoesPositionOffsetSpring: true
    UseAsAudioListener: true
  }
  InstanceHistory {
    SelfId: 18047848671796056105
    SubobjectId: 16818757532530230687
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 5717955329696222322
  Name: "WhiteCamera"
  Transform {
    Location {
      X: -96
      Y: 16.8404541
      Z: 62
    }
    Rotation {
      Pitch: -50
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7856242679720591712
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Camera {
    FreeControl: true
    InitialDistance: 50
    IsDistanceAdjustable: true
    MaxDistance: 200
    PositionOffset {
    }
    RotationOffset {
    }
    FieldOfView: 90
    ViewWidth: 1200
    RotationMode {
      Value: "mc:erotationmode:default"
    }
    MinPitch: -10
    MaxPitch: 80
    IsYawLimited: true
    MinYaw: -50
    MaxYaw: 50
    DoesPositionOffsetSpring: true
    UseAsAudioListener: true
  }
  InstanceHistory {
    SelfId: 5717955329696222322
    SubobjectId: 6648630749716240836
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 15279035605450093862
  Name: "ChessGameSpectatorClient"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7856242679720591712
  UnregisteredParameters {
    Overrides {
      Name: "cs:SpectatorTrigger"
      ObjectReference {
        SelfId: 17405919346257904614
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 14146230325999927733
    }
  }
}
Objects {
  Id: 5082765776119273034
  Name: "ChessGameLogic"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7856242679720591712
  UnregisteredParameters {
    Overrides {
      Name: "cs:Squares"
      ObjectReference {
        SelfId: 88344066486817271
      }
    }
    Overrides {
      Name: "cs:WhitePieces"
      ObjectReference {
        SelfId: 7098905123443049333
      }
    }
    Overrides {
      Name: "cs:BlackPieces"
      ObjectReference {
        SelfId: 7580858057781659668
      }
    }
    Overrides {
      Name: "cs:UtilityFunc"
      AssetReference {
        Id: 6692278755796866025
      }
    }
    Overrides {
      Name: "cs:SFX"
      ObjectReference {
        SelfId: 11994234212324883865
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 16156919470868195836
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 1280795565887203753
      }
    }
    Overrides {
      Name: "cs:queen"
      ObjectReference {
        SelfId: 14596298542777833171
      }
    }
    Overrides {
      Name: "cs:VFX"
      AssetReference {
        Id: 12177081746179529573
      }
    }
    Overrides {
      Name: "cs:WinUI"
      ObjectReference {
        SelfId: 9332391965267518458
      }
    }
    Overrides {
      Name: "cs:LoseUI"
      ObjectReference {
        SelfId: 9491277505920109425
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 5334876443757410023
    }
  }
  InstanceHistory {
    SelfId: 5082765776119273034
    SubobjectId: 6167522357005059068
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 14657208999810201330
  Name: "ChessGameNew"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7856242679720591712
  UnregisteredParameters {
    Overrides {
      Name: "cs:BlackSidePlayTrigger"
      ObjectReference {
        SelfId: 13316712638970642465
      }
    }
    Overrides {
      Name: "cs:WhiteSidePlayTrigger"
      ObjectReference {
        SelfId: 10250868600901217085
      }
    }
    Overrides {
      Name: "cs:WhiteCamera"
      ObjectReference {
        SelfId: 5717955329696222322
      }
    }
    Overrides {
      Name: "cs:BlackCamera"
      ObjectReference {
        SelfId: 18047848671796056105
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 16156919470868195836
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 1280795565887203753
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 16691198239201106992
    }
  }
  InstanceHistory {
    SelfId: 14657208999810201330
    SubobjectId: 15597708847745295172
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 17405919346257904614
  Name: "SpectatorTrigger"
  Transform {
    Location {
      X: -4.25769329
      Y: 17.0122337
    }
    Rotation {
      Yaw: 0.780057907
    }
    Scale {
      X: 5.34846878
      Y: 3.55405807
      Z: 1
    }
  }
  ParentId: 17481209101891147507
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Trigger {
    InteractionLabel: "Spectate"
    TeamSettings {
      IsTeamCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 5165865168396272628
  Name: "BlackChair"
  Transform {
    Location {
      X: 226
      Y: 17
      Z: -103
    }
    Rotation {
      Yaw: 89.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17481209101891147507
  ChildIds: 13316712638970642465
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 408732123743673993
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 5165865168396272628
    SubobjectId: 6101879842533922370
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 13316712638970642465
  Name: "BlackTrigger"
  Transform {
    Location {
      X: 3.99999237
      Y: 42
      Z: 70
    }
    Rotation {
      Yaw: -89.9999847
    }
    Scale {
      X: 1.2
      Y: 1.60000026
      Z: 1.30000007
    }
  }
  ParentId: 5165865168396272628
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Play Chess"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 13316712638970642465
    SubobjectId: 12380566848021190039
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 15816606352975165580
  Name: "WhiteChair"
  Transform {
    Location {
      X: -254
      Y: 17
      Z: -103
    }
    Rotation {
      Yaw: -89.9999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17481209101891147507
  ChildIds: 10250868600901217085
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 408732123743673993
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 15816606352975165580
    SubobjectId: 14438878842444475706
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 10250868600901217085
  Name: "WhiteTrigger"
  Transform {
    Location {
      X: -1.19579315
      Y: 32.2268028
      Z: 70
    }
    Rotation {
      Yaw: 89.9999847
    }
    Scale {
      X: 1.2
      Y: 1.60000026
      Z: 1.30000007
    }
  }
  ParentId: 15816606352975165580
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Play Chess"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 10250868600901217085
    SubobjectId: 11339090576099720843
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 88344066486817271
  Name: "TileCollision"
  Transform {
    Location {
      X: -2
      Y: 19
      Z: -5
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17481209101891147507
  ChildIds: 5920358463422864880
  ChildIds: 16843633923301713260
  ChildIds: 76015665696765449
  ChildIds: 6611349412614027629
  ChildIds: 4820719096589484467
  ChildIds: 14290959844518327315
  ChildIds: 6876414776727336369
  ChildIds: 523748882502634492
  ChildIds: 2114758458922428331
  ChildIds: 16756602664392607677
  ChildIds: 5202756404703174573
  ChildIds: 11173902169504320889
  ChildIds: 1138454319885109713
  ChildIds: 14025762454179476212
  ChildIds: 15379484442686803604
  ChildIds: 6944960859112604508
  ChildIds: 7544112933418235160
  ChildIds: 802669512687385044
  ChildIds: 3478948399650065278
  ChildIds: 15522460661777592629
  ChildIds: 8882622658900642541
  ChildIds: 17595158354030521464
  ChildIds: 8962799178313160754
  ChildIds: 4539401340245787495
  ChildIds: 16519150401562725310
  ChildIds: 12370275337598926966
  ChildIds: 9302981873519819804
  ChildIds: 6489963370831055607
  ChildIds: 13251204517044053482
  ChildIds: 11443172307661692496
  ChildIds: 6744686837215968491
  ChildIds: 11941178938887653360
  ChildIds: 13287199684734022289
  ChildIds: 10510342533339503736
  ChildIds: 4511103331895423577
  ChildIds: 18081934348593041727
  ChildIds: 1085858379401515424
  ChildIds: 11079300781640074692
  ChildIds: 16834322929241727420
  ChildIds: 5322549544728962662
  ChildIds: 10881054545484399801
  ChildIds: 17112840287428389492
  ChildIds: 16036969923817710780
  ChildIds: 11350381602815043284
  ChildIds: 9291121085653558453
  ChildIds: 15601261376410431500
  ChildIds: 18171373555515019179
  ChildIds: 4670344841092900427
  ChildIds: 7544378768819426829
  ChildIds: 399627538886433140
  ChildIds: 17070278645917271281
  ChildIds: 8482886584824313084
  ChildIds: 10576695633958861844
  ChildIds: 12762265934174589223
  ChildIds: 1772563884943132257
  ChildIds: 3767033753039655625
  ChildIds: 9575663555005046674
  ChildIds: 13606723270720956052
  ChildIds: 6258600348090835764
  ChildIds: 15713760664509292223
  ChildIds: 3538934682378245942
  ChildIds: 15997424385811476618
  ChildIds: 16770087646287921864
  ChildIds: 3094881662366240513
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 88344066486817271
    SubobjectId: 1308067091303023681
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 3094881662366240513
  Name: "A1"
  Transform {
    Location {
      X: -89
      Y: -71
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.120321013
        G: 0.143004984
        B: 0.385417
        A: 0.673000038
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 3094881662366240513
    SubobjectId: 4174227838557149879
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 16770087646287921864
  Name: "B1"
  Transform {
    Location {
      X: -89
      Y: -51
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 16770087646287921864
    SubobjectId: 18133108105979074430
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 15997424385811476618
  Name: "C1"
  Transform {
    Location {
      X: -89
      Y: -31
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 15997424385811476618
    SubobjectId: 14779873738341868860
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 3538934682378245942
  Name: "D1"
  Transform {
    Location {
      X: -89
      Y: -11
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 3538934682378245942
    SubobjectId: 2450589544093581952
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 15713760664509292223
  Name: "E1"
  Transform {
    Location {
      X: -89
      Y: 9
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 15713760664509292223
    SubobjectId: 14487115122589174537
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 6258600348090835764
  Name: "F1"
  Transform {
    Location {
      X: -89
      Y: 29
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 6258600348090835764
    SubobjectId: 5027688134605551234
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 13606723270720956052
  Name: "G1"
  Transform {
    Location {
      X: -89
      Y: 49
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 13606723270720956052
    SubobjectId: 12666979620614452002
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 9575663555005046674
  Name: "H1"
  Transform {
    Location {
      X: -89
      Y: 69
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 9575663555005046674
    SubobjectId: 10952045280550308388
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 3767033753039655625
  Name: "A2"
  Transform {
    Location {
      X: -69
      Y: -71
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.120321013
        G: 0.143004984
        B: 0.385417
        A: 0.673000038
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 3767033753039655625
    SubobjectId: 2835540838105139071
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 1772563884943132257
  Name: "B2"
  Transform {
    Location {
      X: -69
      Y: -51
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 1772563884943132257
    SubobjectId: 830778982255547351
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 12762265934174589223
  Name: "C2"
  Transform {
    Location {
      X: -69
      Y: -31
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 12762265934174589223
    SubobjectId: 11673965051718435985
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 10576695633958861844
  Name: "D2"
  Transform {
    Location {
      X: -69
      Y: -11
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 10576695633958861844
    SubobjectId: 9356532546776721826
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 8482886584824313084
  Name: "E2"
  Transform {
    Location {
      X: -69
      Y: 9
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 8482886584824313084
    SubobjectId: 7397065650359378250
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 17070278645917271281
  Name: "F2"
  Transform {
    Location {
      X: -69
      Y: 29
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 17070278645917271281
    SubobjectId: 18445375866400592199
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 399627538886433140
  Name: "G2"
  Transform {
    Location {
      X: -69
      Y: 49
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 399627538886433140
    SubobjectId: 1627258801050684610
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 7544378768819426829
  Name: "H2"
  Transform {
    Location {
      X: -69
      Y: 69
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 7544378768819426829
    SubobjectId: 8912035319255139259
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 4670344841092900427
  Name: "A3"
  Transform {
    Location {
      X: -49
      Y: -71
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.120321013
        G: 0.143004984
        B: 0.385417
        A: 0.673000038
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 4670344841092900427
    SubobjectId: 6038915335285945341
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 18171373555515019179
  Name: "B3"
  Transform {
    Location {
      X: -49
      Y: -51
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 18171373555515019179
    SubobjectId: 17236194527898589725
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 15601261376410431500
  Name: "C3"
  Transform {
    Location {
      X: -49
      Y: -31
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 15601261376410431500
    SubobjectId: 14671668700566529466
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 9291121085653558453
  Name: "D3"
  Transform {
    Location {
      X: -49
      Y: -11
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 9291121085653558453
    SubobjectId: 10659559647042515203
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 11350381602815043284
  Name: "E3"
  Transform {
    Location {
      X: -49
      Y: 9
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 11350381602815043284
    SubobjectId: 10275608570361836386
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 16036969923817710780
  Name: "F3"
  Transform {
    Location {
      X: -49
      Y: 29
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 16036969923817710780
    SubobjectId: 14812391188846096650
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 17112840287428389492
  Name: "G3"
  Transform {
    Location {
      X: -49
      Y: 49
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 17112840287428389492
    SubobjectId: 18330752133074436034
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 10881054545484399801
  Name: "H3"
  Transform {
    Location {
      X: -49
      Y: 69
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 10881054545484399801
    SubobjectId: 9520514050961985807
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 5322549544728962662
  Name: "A4"
  Transform {
    Location {
      X: -29
      Y: -71
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.120321013
        G: 0.143004984
        B: 0.385417
        A: 0.673000038
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 5322549544728962662
    SubobjectId: 6540232709723632592
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 16834322929241727420
  Name: "B4"
  Transform {
    Location {
      X: -29
      Y: -51
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 16834322929241727420
    SubobjectId: 18050827391363822602
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 11079300781640074692
  Name: "C4"
  Transform {
    Location {
      X: -29
      Y: -31
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 11079300781640074692
    SubobjectId: 10006850209249120370
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 1085858379401515424
  Name: "D4"
  Transform {
    Location {
      X: -29
      Y: -11
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 1085858379401515424
    SubobjectId: 2021924996973118486
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 18081934348593041727
  Name: "E4"
  Transform {
    Location {
      X: -29
      Y: 9
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 18081934348593041727
    SubobjectId: 16857258315935745161
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 4511103331895423577
  Name: "F4"
  Transform {
    Location {
      X: -29
      Y: 29
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 4511103331895423577
    SubobjectId: 3279822257508984815
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 10510342533339503736
  Name: "G4"
  Transform {
    Location {
      X: -29
      Y: 49
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 10510342533339503736
    SubobjectId: 9422322868180109774
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 13287199684734022289
  Name: "H4"
  Transform {
    Location {
      X: -29
      Y: 69
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 13287199684734022289
    SubobjectId: 12356595166151960359
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 11941178938887653360
  Name: "A5"
  Transform {
    Location {
      X: -9
      Y: -71
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.120321013
        G: 0.143004984
        B: 0.385417
        A: 0.673000038
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 11941178938887653360
    SubobjectId: 13162186184594379334
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 6744686837215968491
  Name: "B5"
  Transform {
    Location {
      X: -9
      Y: -51
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 6744686837215968491
    SubobjectId: 5658522872856553821
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 11443172307661692496
  Name: "C5"
  Transform {
    Location {
      X: -9
      Y: -31
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 11443172307661692496
    SubobjectId: 10218875322578242534
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 13251204517044053482
  Name: "D5"
  Transform {
    Location {
      X: -9
      Y: -11
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 13251204517044053482
    SubobjectId: 11888183808328822876
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 6489963370831055607
  Name: "E5"
  Transform {
    Location {
      X: -9
      Y: 9
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 6489963370831055607
    SubobjectId: 5264170509236805441
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 9302981873519819804
  Name: "F5"
  Transform {
    Location {
      X: -9
      Y: 29
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 9302981873519819804
    SubobjectId: 10521597140822714794
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 12370275337598926966
  Name: "G5"
  Transform {
    Location {
      X: -9
      Y: 49
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 12370275337598926966
    SubobjectId: 13308954394714641856
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 16519150401562725310
  Name: "H5"
  Transform {
    Location {
      X: -9
      Y: 69
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 16519150401562725310
    SubobjectId: 17735496010143030792
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 4539401340245787495
  Name: "A6"
  Transform {
    Location {
      X: 10
      Y: -71
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.120321013
        G: 0.143004984
        B: 0.385417
        A: 0.673000038
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 4539401340245787495
    SubobjectId: 3306166682820761297
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 8962799178313160754
  Name: "B6"
  Transform {
    Location {
      X: 10
      Y: -51
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 8962799178313160754
    SubobjectId: 8033487419637484932
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 17595158354030521464
  Name: "C6"
  Transform {
    Location {
      X: 10
      Y: -31
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 17595158354030521464
    SubobjectId: 16658924078668151246
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 8882622658900642541
  Name: "D6"
  Transform {
    Location {
      X: 10
      Y: -11
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 8882622658900642541
    SubobjectId: 7519751732823383899
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 15522460661777592629
  Name: "E6"
  Transform {
    Location {
      X: 10
      Y: 9
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 15522460661777592629
    SubobjectId: 14156000937817236611
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 3478948399650065278
  Name: "F6"
  Transform {
    Location {
      X: 10
      Y: 29
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 3478948399650065278
    SubobjectId: 2547165196515106504
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 802669512687385044
  Name: "G6"
  Transform {
    Location {
      X: 10
      Y: 49
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 802669512687385044
    SubobjectId: 1746635554269654114
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 7544112933418235160
  Name: "H6"
  Transform {
    Location {
      X: 10
      Y: 69
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 7544112933418235160
    SubobjectId: 8911777987907149998
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 6944960859112604508
  Name: "A7"
  Transform {
    Location {
      X: 30
      Y: -71
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.120321013
        G: 0.143004984
        B: 0.385417
        A: 0.673000038
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 6944960859112604508
    SubobjectId: 8322539385298687722
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 15379484442686803604
  Name: "B7"
  Transform {
    Location {
      X: 30
      Y: -51
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 15379484442686803604
    SubobjectId: 14298942005830834978
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 14025762454179476212
  Name: "C7"
  Transform {
    Location {
      X: 30
      Y: -31
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 14025762454179476212
    SubobjectId: 15112788152221951810
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 1138454319885109713
  Name: "D7"
  Transform {
    Location {
      X: 30
      Y: -11
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 1138454319885109713
    SubobjectId: 2076852459884108903
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 11173902169504320889
  Name: "E7"
  Transform {
    Location {
      X: 30
      Y: 9
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 11173902169504320889
    SubobjectId: 9804126044168296655
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 5202756404703174573
  Name: "F7"
  Transform {
    Location {
      X: 30
      Y: 29
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 5202756404703174573
    SubobjectId: 6569919532082891291
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 16756602664392607677
  Name: "G7"
  Transform {
    Location {
      X: 30
      Y: 49
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 16756602664392607677
    SubobjectId: 18128542337175343627
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 2114758458922428331
  Name: "H7"
  Transform {
    Location {
      X: 30
      Y: 69
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 2114758458922428331
    SubobjectId: 1029017531661808157
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 523748882502634492
  Name: "A8"
  Transform {
    Location {
      X: 50
      Y: -71
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.120321013
        G: 0.143004984
        B: 0.385417
        A: 0.673000038
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 523748882502634492
    SubobjectId: 1466579970470501962
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 6876414776727336369
  Name: "B8"
  Transform {
    Location {
      X: 50
      Y: -51
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 6876414776727336369
    SubobjectId: 5508749713079230471
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 14290959844518327315
  Name: "C8"
  Transform {
    Location {
      X: 50
      Y: -31
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 14290959844518327315
    SubobjectId: 15370042396136563109
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 4820719096589484467
  Name: "D8"
  Transform {
    Location {
      X: 50
      Y: -11
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 4820719096589484467
    SubobjectId: 5906556781410358277
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 6611349412614027629
  Name: "E8"
  Transform {
    Location {
      X: 50
      Y: 9
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 6611349412614027629
    SubobjectId: 5250870748994841819
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 76015665696765449
  Name: "F8"
  Transform {
    Location {
      X: 50
      Y: 29
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 76015665696765449
    SubobjectId: 1301790685895287743
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 16843633923301713260
  Name: "G8"
  Transform {
    Location {
      X: 50
      Y: 49
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 16843633923301713260
    SubobjectId: 18077017538261496026
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 5920358463422864880
  Name: "H8"
  Transform {
    Location {
      X: 50
      Y: 69
      Z: 5
    }
    Rotation {
    }
    Scale {
      X: 0.199999973
      Y: 0.2
      Z: 1
    }
  }
  ParentId: 88344066486817271
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16048367406070731799
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 5920358463422864880
    SubobjectId: 4699430089858156614
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 4324875671442904053
  Name: "Craftsman End Table"
  Transform {
    Location {
      X: -21
      Y: 16
      Z: -97
    }
    Rotation {
    }
    Scale {
      X: 2.10000014
      Y: 2.3
      Z: 0.900000036
    }
  }
  ParentId: 17481209101891147507
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15212564567298363996
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 4324875671442904053
    SubobjectId: 3394561699278112323
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 2155575710867322408
  Name: "Chessboard Mini"
  Transform {
    Location {
      X: 1
      Y: 6
      Z: -3
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 0.05
      Y: 0.05
      Z: 0.05
    }
  }
  ParentId: 17481209101891147507
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Chessboard Mini_15"
  }
  InstanceHistory {
    SelfId: 2155575710867322408
    SubobjectId: 1077707020070544286
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
