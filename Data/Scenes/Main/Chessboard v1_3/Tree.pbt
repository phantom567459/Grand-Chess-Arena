Name: "Chessboard v1_3"
RootId: 7038071049442959305
Objects {
  Id: 364317368626498139
  Name: "CollisionCube"
  Transform {
    Location {
      X: -30.8879395
      Y: 17.9552
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
  ParentId: 7038071049442959305
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
  Id: 4823608539407166159
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
  ParentId: 7038071049442959305
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
  Id: 6829810934687961971
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
  ParentId: 7038071049442959305
  ChildIds: 4115765860467580427
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
  Id: 4115765860467580427
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
  ParentId: 6829810934687961971
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
        SelfId: 12172559867967437316
      }
    }
    Overrides {
      Name: "cs:Trigger2"
      ObjectReference {
        SelfId: 850042393352160669
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
  Id: 5274765341514861926
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
  ParentId: 7038071049442959305
  ChildIds: 6982644018687995258
  ChildIds: 7496706846315001447
  ChildIds: 3119119728052788056
  ChildIds: 4776151708675804283
  ChildIds: 13388876908435931374
  ChildIds: 9805127757625743790
  ChildIds: 2348742864447639015
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
  Id: 2348742864447639015
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
  ParentId: 5274765341514861926
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
    FilePartitionName: "VFX_3"
  }
}
Objects {
  Id: 9805127757625743790
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
  ParentId: 5274765341514861926
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
    FilePartitionName: "UI_3"
  }
  InstanceHistory {
    SelfId: 219538731183617982
    SubobjectId: 1158860186038346248
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 13388876908435931374
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
  ParentId: 5274765341514861926
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
    FilePartitionName: "SFX_3"
  }
  InstanceHistory {
    SelfId: 11994234212324883865
    SubobjectId: 13072533636836567087
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 4776151708675804283
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
  ParentId: 5274765341514861926
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
  Id: 3119119728052788056
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
  ParentId: 5274765341514861926
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
  Id: 7496706846315001447
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
  ParentId: 5274765341514861926
  UnregisteredParameters {
    Overrides {
      Name: "cs:Squares"
      ObjectReference {
        SelfId: 1410058522028538329
      }
    }
    Overrides {
      Name: "cs:WhitePieces"
      ObjectReference {
        SelfId: 15359048396015664049
      }
    }
    Overrides {
      Name: "cs:BlackPieces"
      ObjectReference {
        SelfId: 5856184898997005965
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
        SelfId: 13388876908435931374
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 524275440253502796
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 2413375202345719442
      }
    }
    Overrides {
      Name: "cs:queen"
      ObjectReference {
        SelfId: 17843451540099543739
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
        SelfId: 13881169460205491947
      }
    }
    Overrides {
      Name: "cs:LoseUI"
      ObjectReference {
        SelfId: 16375835853359432263
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
  Id: 6982644018687995258
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
  ParentId: 5274765341514861926
  UnregisteredParameters {
    Overrides {
      Name: "cs:BlackSidePlayTrigger"
      ObjectReference {
        SelfId: 850042393352160669
      }
    }
    Overrides {
      Name: "cs:WhiteSidePlayTrigger"
      ObjectReference {
        SelfId: 12172559867967437316
      }
    }
    Overrides {
      Name: "cs:WhiteCamera"
      ObjectReference {
        SelfId: 3119119728052788056
      }
    }
    Overrides {
      Name: "cs:BlackCamera"
      ObjectReference {
        SelfId: 4776151708675804283
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 524275440253502796
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 2413375202345719442
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
  Id: 7581176487735129534
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
  ParentId: 7038071049442959305
  ChildIds: 850042393352160669
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
  Id: 850042393352160669
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
  ParentId: 7581176487735129534
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
  Id: 12225027650090549291
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
  ParentId: 7038071049442959305
  ChildIds: 12172559867967437316
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
  Id: 12172559867967437316
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
  ParentId: 12225027650090549291
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
  Id: 1410058522028538329
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
  ParentId: 7038071049442959305
  ChildIds: 240384732680729793
  ChildIds: 5001814914957063664
  ChildIds: 9733757928241489555
  ChildIds: 6763022318351036079
  ChildIds: 7788479138036574069
  ChildIds: 13572496914222094295
  ChildIds: 1710860720776645824
  ChildIds: 457150285597269904
  ChildIds: 5671356302316224255
  ChildIds: 4493111847688360514
  ChildIds: 862121106057856014
  ChildIds: 2915975016930961084
  ChildIds: 5342342548277954722
  ChildIds: 11560975346480166360
  ChildIds: 3978305609874340246
  ChildIds: 6923185349937896046
  ChildIds: 14662074897495692869
  ChildIds: 5165634561653004
  ChildIds: 9384126126078284495
  ChildIds: 9274680309235316694
  ChildIds: 8755762533561032075
  ChildIds: 14078540702974222878
  ChildIds: 3443938882088746841
  ChildIds: 4600964275513052348
  ChildIds: 3643842436049250494
  ChildIds: 12997410714473715865
  ChildIds: 5443424668129826477
  ChildIds: 7404354154759887221
  ChildIds: 1358728150494678776
  ChildIds: 3389374680352992961
  ChildIds: 8397895090950235292
  ChildIds: 4140765792341667982
  ChildIds: 12673781582869140150
  ChildIds: 1051106359363818444
  ChildIds: 9120508858398890688
  ChildIds: 16299931350470390415
  ChildIds: 1700216451388492450
  ChildIds: 17625429257162069288
  ChildIds: 3267264486256495944
  ChildIds: 1501280041844787287
  ChildIds: 11346514767180850662
  ChildIds: 15325341233610130908
  ChildIds: 5852231259024601958
  ChildIds: 5877854064619415013
  ChildIds: 17034636856938604634
  ChildIds: 9550136612174130013
  ChildIds: 17034941847728304336
  ChildIds: 16164372706723837672
  ChildIds: 2375277318199828401
  ChildIds: 3292871868117398718
  ChildIds: 9605371068257678644
  ChildIds: 17769897990107216708
  ChildIds: 8663945117780091320
  ChildIds: 10057649859045578833
  ChildIds: 5040811257174664466
  ChildIds: 9155308783035901992
  ChildIds: 12852649442677249337
  ChildIds: 10348102121477830600
  ChildIds: 14138873219168377365
  ChildIds: 867272618409291669
  ChildIds: 1498245486083829355
  ChildIds: 11638808038434065548
  ChildIds: 7711741269551284320
  ChildIds: 7846588600570130537
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
  Id: 7846588600570130537
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
  ParentId: 1410058522028538329
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
  Id: 7711741269551284320
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
  ParentId: 1410058522028538329
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
  Id: 11638808038434065548
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
  ParentId: 1410058522028538329
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
  Id: 1498245486083829355
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
  ParentId: 1410058522028538329
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
  Id: 867272618409291669
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
  ParentId: 1410058522028538329
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
  Id: 14138873219168377365
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
  ParentId: 1410058522028538329
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
  Id: 10348102121477830600
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
  ParentId: 1410058522028538329
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
  Id: 12852649442677249337
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
  ParentId: 1410058522028538329
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
  Id: 9155308783035901992
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
  ParentId: 1410058522028538329
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
  Id: 5040811257174664466
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
  ParentId: 1410058522028538329
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
  Id: 10057649859045578833
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
  ParentId: 1410058522028538329
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
  Id: 8663945117780091320
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
  ParentId: 1410058522028538329
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
  Id: 17769897990107216708
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
  ParentId: 1410058522028538329
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
  Id: 9605371068257678644
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
  ParentId: 1410058522028538329
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
  Id: 3292871868117398718
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
  ParentId: 1410058522028538329
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
  Id: 2375277318199828401
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
  ParentId: 1410058522028538329
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
  Id: 16164372706723837672
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
  ParentId: 1410058522028538329
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
  Id: 17034941847728304336
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
  ParentId: 1410058522028538329
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
  Id: 9550136612174130013
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
  ParentId: 1410058522028538329
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
  Id: 17034636856938604634
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
  ParentId: 1410058522028538329
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
  Id: 5877854064619415013
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
  ParentId: 1410058522028538329
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
  Id: 5852231259024601958
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
  ParentId: 1410058522028538329
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
  Id: 15325341233610130908
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
  ParentId: 1410058522028538329
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
  Id: 11346514767180850662
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
  ParentId: 1410058522028538329
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
  Id: 1501280041844787287
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
  ParentId: 1410058522028538329
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
  Id: 3267264486256495944
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
  ParentId: 1410058522028538329
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
  Id: 17625429257162069288
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
  ParentId: 1410058522028538329
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
  Id: 1700216451388492450
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
  ParentId: 1410058522028538329
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
  Id: 16299931350470390415
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
  ParentId: 1410058522028538329
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
  Id: 9120508858398890688
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
  ParentId: 1410058522028538329
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
  Id: 1051106359363818444
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
  ParentId: 1410058522028538329
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
  Id: 12673781582869140150
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
  ParentId: 1410058522028538329
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
  Id: 4140765792341667982
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
  ParentId: 1410058522028538329
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
  Id: 8397895090950235292
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
  ParentId: 1410058522028538329
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
  Id: 3389374680352992961
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
  ParentId: 1410058522028538329
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
  Id: 1358728150494678776
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
  ParentId: 1410058522028538329
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
  Id: 7404354154759887221
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
  ParentId: 1410058522028538329
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
  Id: 5443424668129826477
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
  ParentId: 1410058522028538329
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
  Id: 12997410714473715865
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
  ParentId: 1410058522028538329
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
  Id: 3643842436049250494
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
  ParentId: 1410058522028538329
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
  Id: 4600964275513052348
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
  ParentId: 1410058522028538329
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
  Id: 3443938882088746841
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
  ParentId: 1410058522028538329
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
  Id: 14078540702974222878
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
  ParentId: 1410058522028538329
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
  Id: 8755762533561032075
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
  ParentId: 1410058522028538329
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
  Id: 9274680309235316694
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
  ParentId: 1410058522028538329
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
  Id: 9384126126078284495
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
  ParentId: 1410058522028538329
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
  Id: 5165634561653004
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
  ParentId: 1410058522028538329
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
  Id: 14662074897495692869
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
  ParentId: 1410058522028538329
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
  Id: 6923185349937896046
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
  ParentId: 1410058522028538329
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
  Id: 3978305609874340246
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
  ParentId: 1410058522028538329
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
  Id: 11560975346480166360
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
  ParentId: 1410058522028538329
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
  Id: 5342342548277954722
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
  ParentId: 1410058522028538329
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
  Id: 2915975016930961084
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
  ParentId: 1410058522028538329
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
  Id: 862121106057856014
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
  ParentId: 1410058522028538329
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
  Id: 4493111847688360514
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
  ParentId: 1410058522028538329
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
  Id: 5671356302316224255
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
  ParentId: 1410058522028538329
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
  Id: 457150285597269904
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
  ParentId: 1410058522028538329
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
  Id: 1710860720776645824
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
  ParentId: 1410058522028538329
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
  Id: 13572496914222094295
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
  ParentId: 1410058522028538329
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
  Id: 7788479138036574069
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
  ParentId: 1410058522028538329
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
  Id: 6763022318351036079
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
  ParentId: 1410058522028538329
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
  Id: 9733757928241489555
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
  ParentId: 1410058522028538329
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
  Id: 5001814914957063664
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
  ParentId: 1410058522028538329
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
  Id: 240384732680729793
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
  ParentId: 1410058522028538329
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
  Id: 10179963679262859018
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
  ParentId: 7038071049442959305
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
  Id: 4052853027226648744
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
  ParentId: 7038071049442959305
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
    FilePartitionName: "Chessboard Mini_3"
  }
  InstanceHistory {
    SelfId: 2155575710867322408
    SubobjectId: 1077707020070544286
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}