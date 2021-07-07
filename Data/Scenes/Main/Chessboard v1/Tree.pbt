Name: "Chessboard v1"
RootId: 2689245759330475069
Objects {
  Id: 7670768710518278671
  Name: "CollisionCube"
  Transform {
    Location {
      X: -23.6469727
      Y: 12.050415
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
  ParentId: 2689245759330475069
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
  Id: 13311898227278700254
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
  ParentId: 2689245759330475069
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
  Id: 16825252646565792241
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
  ParentId: 2689245759330475069
  ChildIds: 4207543026137048873
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
  Id: 4207543026137048873
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
  ParentId: 16825252646565792241
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
        SelfId: 17667931869343580133
      }
    }
    Overrides {
      Name: "cs:Trigger2"
      ObjectReference {
        SelfId: 10136452805343652469
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
  Id: 2186713327432572833
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
  ParentId: 2689245759330475069
  ChildIds: 2123415029538457509
  ChildIds: 14172427953454788076
  ChildIds: 1097439935155240967
  ChildIds: 16655714606039310349
  ChildIds: 11622731863931696933
  ChildIds: 2763478429360225061
  ChildIds: 17165718350075331064
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
  Id: 17165718350075331064
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
  ParentId: 2186713327432572833
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
    FilePartitionName: "VFX_1"
  }
}
Objects {
  Id: 2763478429360225061
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
  ParentId: 2186713327432572833
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
    FilePartitionName: "UI"
  }
  InstanceHistory {
    SelfId: 219538731183617982
    SubobjectId: 1158860186038346248
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 11622731863931696933
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
  ParentId: 2186713327432572833
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
    FilePartitionName: "SFX"
  }
  InstanceHistory {
    SelfId: 11994234212324883865
    SubobjectId: 13072533636836567087
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 16655714606039310349
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
  ParentId: 2186713327432572833
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
  }
  InstanceHistory {
    SelfId: 18047848671796056105
    SubobjectId: 16818757532530230687
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 1097439935155240967
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
  ParentId: 2186713327432572833
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
  }
  InstanceHistory {
    SelfId: 5717955329696222322
    SubobjectId: 6648630749716240836
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 14172427953454788076
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
  ParentId: 2186713327432572833
  UnregisteredParameters {
    Overrides {
      Name: "cs:Squares"
      ObjectReference {
        SelfId: 17505276404199932075
      }
    }
    Overrides {
      Name: "cs:WhitePieces"
      ObjectReference {
        SelfId: 11230679938023686471
      }
    }
    Overrides {
      Name: "cs:BlackPieces"
      ObjectReference {
        SelfId: 18231540353518251783
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
        SelfId: 11622731863931696933
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 2653263245119743868
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 1417337295996345952
      }
    }
    Overrides {
      Name: "cs:queen"
      ObjectReference {
        SelfId: 1359597682473868347
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
        SelfId: 12618604585341952915
      }
    }
    Overrides {
      Name: "cs:LoseUI"
      ObjectReference {
        SelfId: 7953730484102359307
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
  Id: 2123415029538457509
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
  ParentId: 2186713327432572833
  UnregisteredParameters {
    Overrides {
      Name: "cs:BlackSidePlayTrigger"
      ObjectReference {
        SelfId: 10136452805343652469
      }
    }
    Overrides {
      Name: "cs:WhiteSidePlayTrigger"
      ObjectReference {
        SelfId: 17667931869343580133
      }
    }
    Overrides {
      Name: "cs:WhiteCamera"
      ObjectReference {
        SelfId: 1097439935155240967
      }
    }
    Overrides {
      Name: "cs:BlackCamera"
      ObjectReference {
        SelfId: 16655714606039310349
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 2653263245119743868
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 1417337295996345952
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
  Id: 2729285204815821471
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
  ParentId: 2689245759330475069
  ChildIds: 10136452805343652469
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
  Id: 10136452805343652469
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
  ParentId: 2729285204815821471
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
  Id: 801851770428106121
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
  ParentId: 2689245759330475069
  ChildIds: 17667931869343580133
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
  Id: 17667931869343580133
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
  ParentId: 801851770428106121
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
  Id: 17505276404199932075
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
  ParentId: 2689245759330475069
  ChildIds: 13942155666378131362
  ChildIds: 4874046815003471992
  ChildIds: 10788720709337831100
  ChildIds: 1102060344849985718
  ChildIds: 15115792014732627556
  ChildIds: 6067729401799089417
  ChildIds: 1250516083456644215
  ChildIds: 9130865308806185213
  ChildIds: 13226396283359087008
  ChildIds: 8079733165747237217
  ChildIds: 14113496772545398687
  ChildIds: 17708122656430159786
  ChildIds: 7349572585921700715
  ChildIds: 8493402278711739302
  ChildIds: 2866295739959169535
  ChildIds: 9322538553721537428
  ChildIds: 10282886198679806954
  ChildIds: 10253960807820142072
  ChildIds: 1177444066209115554
  ChildIds: 17520768388314424144
  ChildIds: 6543038703949460080
  ChildIds: 11873424883205411409
  ChildIds: 4363155658067524512
  ChildIds: 2099106955520877501
  ChildIds: 2315614449608886991
  ChildIds: 16232554149556942081
  ChildIds: 1282727718838692095
  ChildIds: 3063467895821126812
  ChildIds: 10371429696887825009
  ChildIds: 1361313767959597367
  ChildIds: 13474261472184095917
  ChildIds: 13327473149130972446
  ChildIds: 15211111081169362076
  ChildIds: 5378813852880811071
  ChildIds: 14958737270063837313
  ChildIds: 17820106219917471493
  ChildIds: 5099867466664884918
  ChildIds: 6348711253591515446
  ChildIds: 4002650256537008713
  ChildIds: 5423624656705090599
  ChildIds: 2454232728814185376
  ChildIds: 8559365242944391781
  ChildIds: 17988616825425216958
  ChildIds: 3801459054922625483
  ChildIds: 18053376671302707743
  ChildIds: 15156113216750903410
  ChildIds: 165344378577970247
  ChildIds: 2836914330873100266
  ChildIds: 11310735707217792279
  ChildIds: 12630237529201404447
  ChildIds: 12375041754419484593
  ChildIds: 13429947067529913253
  ChildIds: 3861116977669793562
  ChildIds: 3638972394657977203
  ChildIds: 4093618794522689206
  ChildIds: 4061903760718819767
  ChildIds: 17268402116757377394
  ChildIds: 765500694436502243
  ChildIds: 15807821086005849020
  ChildIds: 3080641973463950079
  ChildIds: 13867665186237548873
  ChildIds: 11343688122534679535
  ChildIds: 5255794902769371996
  ChildIds: 3712423950446142882
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
  Id: 3712423950446142882
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
  ParentId: 17505276404199932075
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
  Id: 5255794902769371996
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
  ParentId: 17505276404199932075
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
  Id: 11343688122534679535
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
  ParentId: 17505276404199932075
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
  Id: 13867665186237548873
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
  ParentId: 17505276404199932075
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
  Id: 3080641973463950079
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
  ParentId: 17505276404199932075
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
  Id: 15807821086005849020
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
  ParentId: 17505276404199932075
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
  Id: 765500694436502243
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
  ParentId: 17505276404199932075
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
  Id: 17268402116757377394
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
  ParentId: 17505276404199932075
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
  Id: 4061903760718819767
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
  ParentId: 17505276404199932075
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
  Id: 4093618794522689206
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
  ParentId: 17505276404199932075
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
  Id: 3638972394657977203
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
  ParentId: 17505276404199932075
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
  Id: 3861116977669793562
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
  ParentId: 17505276404199932075
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
  Id: 13429947067529913253
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
  ParentId: 17505276404199932075
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
  Id: 12375041754419484593
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
  ParentId: 17505276404199932075
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
  Id: 12630237529201404447
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
  ParentId: 17505276404199932075
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
  Id: 11310735707217792279
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
  ParentId: 17505276404199932075
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
  Id: 2836914330873100266
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
  ParentId: 17505276404199932075
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
  Id: 165344378577970247
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
  ParentId: 17505276404199932075
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
  Id: 15156113216750903410
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
  ParentId: 17505276404199932075
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
  Id: 18053376671302707743
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
  ParentId: 17505276404199932075
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
  Id: 3801459054922625483
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
  ParentId: 17505276404199932075
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
  Id: 17988616825425216958
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
  ParentId: 17505276404199932075
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
  Id: 8559365242944391781
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
  ParentId: 17505276404199932075
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
  Id: 2454232728814185376
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
  ParentId: 17505276404199932075
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
  Id: 5423624656705090599
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
  ParentId: 17505276404199932075
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
  Id: 4002650256537008713
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
  ParentId: 17505276404199932075
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
  Id: 6348711253591515446
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
  ParentId: 17505276404199932075
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
  Id: 5099867466664884918
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
  ParentId: 17505276404199932075
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
  Id: 17820106219917471493
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
  ParentId: 17505276404199932075
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
  Id: 14958737270063837313
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
  ParentId: 17505276404199932075
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
  Id: 5378813852880811071
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
  ParentId: 17505276404199932075
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
  Id: 15211111081169362076
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
  ParentId: 17505276404199932075
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
  Id: 13327473149130972446
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
  ParentId: 17505276404199932075
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
  Id: 13474261472184095917
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
  ParentId: 17505276404199932075
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
  Id: 1361313767959597367
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
  ParentId: 17505276404199932075
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
  Id: 10371429696887825009
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
  ParentId: 17505276404199932075
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
  Id: 3063467895821126812
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
  ParentId: 17505276404199932075
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
  Id: 1282727718838692095
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
  ParentId: 17505276404199932075
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
  Id: 16232554149556942081
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
  ParentId: 17505276404199932075
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
  Id: 2315614449608886991
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
  ParentId: 17505276404199932075
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
  Id: 2099106955520877501
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
  ParentId: 17505276404199932075
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
  Id: 4363155658067524512
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
  ParentId: 17505276404199932075
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
  Id: 11873424883205411409
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
  ParentId: 17505276404199932075
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
  Id: 6543038703949460080
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
  ParentId: 17505276404199932075
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
  Id: 17520768388314424144
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
  ParentId: 17505276404199932075
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
  Id: 1177444066209115554
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
  ParentId: 17505276404199932075
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
  Id: 10253960807820142072
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
  ParentId: 17505276404199932075
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
  Id: 10282886198679806954
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
  ParentId: 17505276404199932075
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
  Id: 9322538553721537428
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
  ParentId: 17505276404199932075
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
  Id: 2866295739959169535
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
  ParentId: 17505276404199932075
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
  Id: 8493402278711739302
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
  ParentId: 17505276404199932075
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
  Id: 7349572585921700715
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
  ParentId: 17505276404199932075
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
  Id: 17708122656430159786
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
  ParentId: 17505276404199932075
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
  Id: 14113496772545398687
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
  ParentId: 17505276404199932075
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
  Id: 8079733165747237217
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
  ParentId: 17505276404199932075
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
  Id: 13226396283359087008
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
  ParentId: 17505276404199932075
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
  Id: 9130865308806185213
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
  ParentId: 17505276404199932075
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
  Id: 1250516083456644215
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
  ParentId: 17505276404199932075
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
  Id: 6067729401799089417
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
  ParentId: 17505276404199932075
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
  Id: 15115792014732627556
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
  ParentId: 17505276404199932075
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
  Id: 1102060344849985718
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
  ParentId: 17505276404199932075
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
  Id: 10788720709337831100
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
  ParentId: 17505276404199932075
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
  Id: 4874046815003471992
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
  ParentId: 17505276404199932075
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
  Id: 13942155666378131362
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
  ParentId: 17505276404199932075
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
  Id: 7119470450824436347
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
  ParentId: 2689245759330475069
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
  Id: 11230678149178377167
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
  ParentId: 2689245759330475069
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
    FilePartitionName: "Chessboard Mini"
  }
  InstanceHistory {
    SelfId: 2155575710867322408
    SubobjectId: 1077707020070544286
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
