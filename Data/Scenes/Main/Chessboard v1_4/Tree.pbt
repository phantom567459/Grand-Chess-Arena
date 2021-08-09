Name: "Chessboard v1_4"
RootId: 1412823611355369746
Objects {
  Id: 11630308762651932321
  Name: "CollisionCube"
  Transform {
    Location {
      X: -27.4146729
      Y: 13.6123047
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
  ParentId: 1412823611355369746
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
  Id: 9336240656252249168
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
  ParentId: 1412823611355369746
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
  Id: 5236848041400591610
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
  ParentId: 1412823611355369746
  ChildIds: 3115026778226734146
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
  Id: 3115026778226734146
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
  ParentId: 5236848041400591610
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
        SelfId: 12241277091221470892
      }
    }
    Overrides {
      Name: "cs:Trigger2"
      ObjectReference {
        SelfId: 1107232806390936454
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
  Id: 1272873328011000996
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
  ParentId: 1412823611355369746
  ChildIds: 13902242774945244743
  ChildIds: 18096850853618983751
  ChildIds: 15025067148698582976
  ChildIds: 15302793658429310623
  ChildIds: 10373258437487306106
  ChildIds: 13302784724648571909
  ChildIds: 16090613786014860691
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
  Id: 16090613786014860691
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
  ParentId: 1272873328011000996
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
    FilePartitionName: "VFX_5"
  }
}
Objects {
  Id: 13302784724648571909
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
  ParentId: 1272873328011000996
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
    FilePartitionName: "UI_4"
  }
  InstanceHistory {
    SelfId: 219538731183617982
    SubobjectId: 1158860186038346248
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 10373258437487306106
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
  ParentId: 1272873328011000996
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
    FilePartitionName: "SFX_4"
  }
  InstanceHistory {
    SelfId: 11994234212324883865
    SubobjectId: 13072533636836567087
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 15302793658429310623
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
  ParentId: 1272873328011000996
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
    MinDistance: -50
    MaxDistance: 225
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
    MaxPitch: 100
    IsYawLimited: true
    MinYaw: -100
    MaxYaw: 100
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
  Id: 15025067148698582976
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
  ParentId: 1272873328011000996
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
    MinDistance: -50
    MaxDistance: 225
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
    MaxPitch: 100
    IsYawLimited: true
    MinYaw: -100
    MaxYaw: 100
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
  Id: 18096850853618983751
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
  ParentId: 1272873328011000996
  UnregisteredParameters {
    Overrides {
      Name: "cs:Squares"
      ObjectReference {
        SelfId: 12486195366872636484
      }
    }
    Overrides {
      Name: "cs:WhitePieces"
      ObjectReference {
        SelfId: 13563164084628580882
      }
    }
    Overrides {
      Name: "cs:BlackPieces"
      ObjectReference {
        SelfId: 661666482473810236
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
        SelfId: 10373258437487306106
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 13103523468417437244
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 16874370380171104347
      }
    }
    Overrides {
      Name: "cs:queen"
      ObjectReference {
        SelfId: 14029585423613525588
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
        SelfId: 2510746825773737342
      }
    }
    Overrides {
      Name: "cs:LoseUI"
      ObjectReference {
        SelfId: 4671960344192830081
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
  Id: 13902242774945244743
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
  ParentId: 1272873328011000996
  UnregisteredParameters {
    Overrides {
      Name: "cs:BlackSidePlayTrigger"
      ObjectReference {
        SelfId: 1107232806390936454
      }
    }
    Overrides {
      Name: "cs:WhiteSidePlayTrigger"
      ObjectReference {
        SelfId: 12241277091221470892
      }
    }
    Overrides {
      Name: "cs:WhiteCamera"
      ObjectReference {
        SelfId: 15025067148698582976
      }
    }
    Overrides {
      Name: "cs:BlackCamera"
      ObjectReference {
        SelfId: 15302793658429310623
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 13103523468417437244
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 16874370380171104347
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
  Id: 10162823273675392821
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
  ParentId: 1412823611355369746
  ChildIds: 1107232806390936454
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
  Id: 1107232806390936454
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
  ParentId: 10162823273675392821
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
  Id: 4647453518834061359
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
  ParentId: 1412823611355369746
  ChildIds: 12241277091221470892
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
  Id: 12241277091221470892
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
  ParentId: 4647453518834061359
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
  Id: 12486195366872636484
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
  ParentId: 1412823611355369746
  ChildIds: 12857595519578015228
  ChildIds: 7429081088410429683
  ChildIds: 25821353483732794
  ChildIds: 3167912014775280011
  ChildIds: 8460507467351246539
  ChildIds: 10026028126344795958
  ChildIds: 622344193672639375
  ChildIds: 10845990577251170295
  ChildIds: 788307705268790470
  ChildIds: 6531361231899786859
  ChildIds: 10823394396632117177
  ChildIds: 6864071102679797820
  ChildIds: 14996393202955290627
  ChildIds: 16741071976832184575
  ChildIds: 11441443908352587266
  ChildIds: 65525443493231864
  ChildIds: 5235540558315036977
  ChildIds: 6245266362193397698
  ChildIds: 1931064683754487422
  ChildIds: 14430225154383388332
  ChildIds: 7935948408824212729
  ChildIds: 3112799394858264163
  ChildIds: 2841366852327351063
  ChildIds: 8012142385347563155
  ChildIds: 12581323353363587563
  ChildIds: 8390683213445758952
  ChildIds: 10666983323990340541
  ChildIds: 10443850326064384649
  ChildIds: 4618583595587253616
  ChildIds: 13561092522816286591
  ChildIds: 13869233597828222355
  ChildIds: 3512353232867866089
  ChildIds: 18017436621727437001
  ChildIds: 9819018572236232306
  ChildIds: 7537473967698563525
  ChildIds: 7827681289715747985
  ChildIds: 9193152152156398151
  ChildIds: 17155101288473792262
  ChildIds: 8502638898183691523
  ChildIds: 15054825363345670935
  ChildIds: 8839179453342860481
  ChildIds: 3847251704811144143
  ChildIds: 16598831022238024632
  ChildIds: 5037923506210475974
  ChildIds: 14937942855489320531
  ChildIds: 5883320034571749495
  ChildIds: 4842987381167204467
  ChildIds: 12731625286085792446
  ChildIds: 10500206224084896627
  ChildIds: 1964990774055098595
  ChildIds: 8451540398332059910
  ChildIds: 12437772194978217205
  ChildIds: 17039024257456558773
  ChildIds: 919066719750363994
  ChildIds: 16935439523913446911
  ChildIds: 9369634003520164460
  ChildIds: 5183543341255371113
  ChildIds: 4468793944944632771
  ChildIds: 9814629231371995596
  ChildIds: 11072866447753744943
  ChildIds: 15123452475699329767
  ChildIds: 16354634956764739581
  ChildIds: 8930049092837952957
  ChildIds: 2753726912744833304
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
  Id: 2753726912744833304
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
  ParentId: 12486195366872636484
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
  Id: 8930049092837952957
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
  ParentId: 12486195366872636484
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
  Id: 16354634956764739581
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
  ParentId: 12486195366872636484
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
  Id: 15123452475699329767
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
  ParentId: 12486195366872636484
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
  Id: 11072866447753744943
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
  ParentId: 12486195366872636484
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
  Id: 9814629231371995596
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
  ParentId: 12486195366872636484
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
  Id: 4468793944944632771
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
  ParentId: 12486195366872636484
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
  Id: 5183543341255371113
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
  ParentId: 12486195366872636484
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
  Id: 9369634003520164460
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
  ParentId: 12486195366872636484
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
  Id: 16935439523913446911
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
  ParentId: 12486195366872636484
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
  Id: 919066719750363994
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
  ParentId: 12486195366872636484
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
  Id: 17039024257456558773
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
  ParentId: 12486195366872636484
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
  Id: 12437772194978217205
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
  ParentId: 12486195366872636484
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
  Id: 8451540398332059910
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
  ParentId: 12486195366872636484
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
  Id: 1964990774055098595
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
  ParentId: 12486195366872636484
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
  Id: 10500206224084896627
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
  ParentId: 12486195366872636484
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
  Id: 12731625286085792446
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
  ParentId: 12486195366872636484
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
  Id: 4842987381167204467
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
  ParentId: 12486195366872636484
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
  Id: 5883320034571749495
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
  ParentId: 12486195366872636484
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
  Id: 14937942855489320531
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
  ParentId: 12486195366872636484
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
  Id: 5037923506210475974
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
  ParentId: 12486195366872636484
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
  Id: 16598831022238024632
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
  ParentId: 12486195366872636484
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
  Id: 3847251704811144143
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
  ParentId: 12486195366872636484
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
  Id: 8839179453342860481
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
  ParentId: 12486195366872636484
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
  Id: 15054825363345670935
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
  ParentId: 12486195366872636484
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
  Id: 8502638898183691523
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
  ParentId: 12486195366872636484
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
  Id: 17155101288473792262
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
  ParentId: 12486195366872636484
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
  Id: 9193152152156398151
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
  ParentId: 12486195366872636484
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
  Id: 7827681289715747985
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
  ParentId: 12486195366872636484
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
  Id: 7537473967698563525
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
  ParentId: 12486195366872636484
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
  Id: 9819018572236232306
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
  ParentId: 12486195366872636484
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
  Id: 18017436621727437001
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
  ParentId: 12486195366872636484
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
  Id: 3512353232867866089
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
  ParentId: 12486195366872636484
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
  Id: 13869233597828222355
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
  ParentId: 12486195366872636484
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
  Id: 13561092522816286591
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
  ParentId: 12486195366872636484
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
  Id: 4618583595587253616
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
  ParentId: 12486195366872636484
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
  Id: 10443850326064384649
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
  ParentId: 12486195366872636484
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
  Id: 10666983323990340541
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
  ParentId: 12486195366872636484
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
  Id: 8390683213445758952
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
  ParentId: 12486195366872636484
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
  Id: 12581323353363587563
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
  ParentId: 12486195366872636484
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
  Id: 8012142385347563155
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
  ParentId: 12486195366872636484
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
  Id: 2841366852327351063
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
  ParentId: 12486195366872636484
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
  Id: 3112799394858264163
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
  ParentId: 12486195366872636484
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
  Id: 7935948408824212729
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
  ParentId: 12486195366872636484
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
  Id: 14430225154383388332
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
  ParentId: 12486195366872636484
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
  Id: 1931064683754487422
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
  ParentId: 12486195366872636484
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
  Id: 6245266362193397698
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
  ParentId: 12486195366872636484
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
  Id: 5235540558315036977
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
  ParentId: 12486195366872636484
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
  Id: 65525443493231864
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
  ParentId: 12486195366872636484
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
  Id: 11441443908352587266
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
  ParentId: 12486195366872636484
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
  Id: 16741071976832184575
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
  ParentId: 12486195366872636484
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
  Id: 14996393202955290627
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
  ParentId: 12486195366872636484
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
  Id: 6864071102679797820
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
  ParentId: 12486195366872636484
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
  Id: 10823394396632117177
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
  ParentId: 12486195366872636484
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
  Id: 6531361231899786859
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
  ParentId: 12486195366872636484
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
  Id: 788307705268790470
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
  ParentId: 12486195366872636484
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
  Id: 10845990577251170295
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
  ParentId: 12486195366872636484
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
  Id: 622344193672639375
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
  ParentId: 12486195366872636484
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
  Id: 10026028126344795958
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
  ParentId: 12486195366872636484
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
  Id: 8460507467351246539
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
  ParentId: 12486195366872636484
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
  Id: 3167912014775280011
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
  ParentId: 12486195366872636484
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
  Id: 25821353483732794
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
  ParentId: 12486195366872636484
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
  Id: 7429081088410429683
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
  ParentId: 12486195366872636484
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
  Id: 12857595519578015228
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
  ParentId: 12486195366872636484
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
  Id: 781903914573145717
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
  ParentId: 1412823611355369746
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
  Id: 2870095785223814159
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
  ParentId: 1412823611355369746
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
    FilePartitionName: "Chessboard Mini_4"
  }
  InstanceHistory {
    SelfId: 2155575710867322408
    SubobjectId: 1077707020070544286
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
