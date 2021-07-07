Name: "Chessboard v1_7"
RootId: 15701331535818524186
Objects {
  Id: 14262366461193932457
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
  ParentId: 15701331535818524186
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
  Id: 7640105581133674588
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
  ParentId: 15701331535818524186
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  Id: 5795837190919463448
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
  ParentId: 15701331535818524186
  ChildIds: 4322474873827282081
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
  Id: 4322474873827282081
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
  ParentId: 5795837190919463448
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
        SelfId: 1071502347905105548
      }
    }
    Overrides {
      Name: "cs:Trigger2"
      ObjectReference {
        SelfId: 7074221951301151845
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
  Id: 13668458322234260239
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
  ParentId: 15701331535818524186
  ChildIds: 16497260225854402513
  ChildIds: 984154656903888527
  ChildIds: 2622987829145605731
  ChildIds: 5341256004654996028
  ChildIds: 13836663181072490742
  ChildIds: 7946153216780400468
  ChildIds: 13262790761149375227
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
  Id: 13262790761149375227
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
  ParentId: 13668458322234260239
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
    FilePartitionName: "VFX"
  }
}
Objects {
  Id: 7946153216780400468
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
  ParentId: 13668458322234260239
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
    FilePartitionName: "UI_8"
  }
  InstanceHistory {
    SelfId: 219538731183617982
    SubobjectId: 1158860186038346248
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 13836663181072490742
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
  ParentId: 13668458322234260239
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
    FilePartitionName: "SFX_8"
  }
  InstanceHistory {
    SelfId: 11994234212324883865
    SubobjectId: 13072533636836567087
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 5341256004654996028
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
  ParentId: 13668458322234260239
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  }
  InstanceHistory {
    SelfId: 18047848671796056105
    SubobjectId: 16818757532530230687
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 2622987829145605731
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
  ParentId: 13668458322234260239
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  }
  InstanceHistory {
    SelfId: 5717955329696222322
    SubobjectId: 6648630749716240836
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
Objects {
  Id: 984154656903888527
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
  ParentId: 13668458322234260239
  UnregisteredParameters {
    Overrides {
      Name: "cs:Squares"
      ObjectReference {
        SelfId: 13587479795202423165
      }
    }
    Overrides {
      Name: "cs:WhitePieces"
      ObjectReference {
        SelfId: 9963373493233282328
      }
    }
    Overrides {
      Name: "cs:BlackPieces"
      ObjectReference {
        SelfId: 15976419759307026364
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
        SelfId: 13836663181072490742
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 14448719111274521217
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 12776346227401776567
      }
    }
    Overrides {
      Name: "cs:queen"
      ObjectReference {
        SelfId: 16739933571264530366
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
        SelfId: 12860888488616185725
      }
    }
    Overrides {
      Name: "cs:LoseUI"
      ObjectReference {
        SelfId: 13248295828227600327
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
  Id: 16497260225854402513
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
  ParentId: 13668458322234260239
  UnregisteredParameters {
    Overrides {
      Name: "cs:BlackSidePlayTrigger"
      ObjectReference {
        SelfId: 7074221951301151845
      }
    }
    Overrides {
      Name: "cs:WhiteSidePlayTrigger"
      ObjectReference {
        SelfId: 1071502347905105548
      }
    }
    Overrides {
      Name: "cs:WhiteCamera"
      ObjectReference {
        SelfId: 2622987829145605731
      }
    }
    Overrides {
      Name: "cs:BlackCamera"
      ObjectReference {
        SelfId: 5341256004654996028
      }
    }
    Overrides {
      Name: "cs:DumpBoard"
      ObjectReference {
        SelfId: 14448719111274521217
      }
    }
    Overrides {
      Name: "cs:NotationSheet"
      ObjectReference {
        SelfId: 12776346227401776567
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
  Id: 9452181332694788693
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
  ParentId: 15701331535818524186
  ChildIds: 7074221951301151845
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 7074221951301151845
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
  ParentId: 9452181332694788693
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
  Id: 16829905543349629990
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
  ParentId: 15701331535818524186
  ChildIds: 1071502347905105548
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 1071502347905105548
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
  ParentId: 16829905543349629990
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
  Id: 13587479795202423165
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
  ParentId: 15701331535818524186
  ChildIds: 2090169158546123496
  ChildIds: 9794744464409018885
  ChildIds: 14232222972723997328
  ChildIds: 6712491633606973705
  ChildIds: 6403300997039640764
  ChildIds: 698458153967896432
  ChildIds: 15761408143217442622
  ChildIds: 579226326707594880
  ChildIds: 5991796652651835016
  ChildIds: 13296701874274406743
  ChildIds: 13640029937497001779
  ChildIds: 18089882774184181267
  ChildIds: 17842250787309071823
  ChildIds: 13440522480506786834
  ChildIds: 13962964637985456644
  ChildIds: 4956906972375446331
  ChildIds: 10980082448699931664
  ChildIds: 4468388766518795241
  ChildIds: 9183944557870668946
  ChildIds: 13167960271389152583
  ChildIds: 11283503831337646641
  ChildIds: 14964545000493087117
  ChildIds: 2648242465913372854
  ChildIds: 2002556969573819925
  ChildIds: 6558427059698558517
  ChildIds: 13041451722991598590
  ChildIds: 14249889757344686562
  ChildIds: 3290845739761605315
  ChildIds: 16151978755201847459
  ChildIds: 14169772764843945145
  ChildIds: 14921893831267655849
  ChildIds: 5500780034488035354
  ChildIds: 18426800566644039405
  ChildIds: 14646639446927626837
  ChildIds: 10037341523112282793
  ChildIds: 7667959770139884510
  ChildIds: 12639278576249428287
  ChildIds: 17950120500058051573
  ChildIds: 3287279447671946126
  ChildIds: 16967507798393117503
  ChildIds: 7191064996046222587
  ChildIds: 3693149903885397680
  ChildIds: 5546879693932484606
  ChildIds: 1858271027324205884
  ChildIds: 103317631326315200
  ChildIds: 4387152218009675192
  ChildIds: 8342476849466453141
  ChildIds: 7319357540651480326
  ChildIds: 13018187006226296680
  ChildIds: 2774829991162169457
  ChildIds: 8996021351167745676
  ChildIds: 10391869639579461910
  ChildIds: 8667214981986704408
  ChildIds: 5847362649684150339
  ChildIds: 5613123386493119605
  ChildIds: 8767847679126535930
  ChildIds: 9535210083453088297
  ChildIds: 9908942144614153007
  ChildIds: 3268974315582861008
  ChildIds: 13365092620266897771
  ChildIds: 11961856320449467579
  ChildIds: 15948991257852862842
  ChildIds: 6763322592870729391
  ChildIds: 2313602671781720457
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
  Id: 2313602671781720457
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
  ParentId: 13587479795202423165
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
  Id: 6763322592870729391
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 15948991257852862842
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 11961856320449467579
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 13365092620266897771
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 3268974315582861008
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 9908942144614153007
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 9535210083453088297
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 8767847679126535930
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
  ParentId: 13587479795202423165
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
  Id: 5613123386493119605
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 5847362649684150339
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 8667214981986704408
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 10391869639579461910
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 8996021351167745676
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 2774829991162169457
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 13018187006226296680
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 7319357540651480326
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
  ParentId: 13587479795202423165
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
  Id: 8342476849466453141
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 4387152218009675192
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 103317631326315200
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 1858271027324205884
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 5546879693932484606
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 3693149903885397680
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 7191064996046222587
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 16967507798393117503
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
  ParentId: 13587479795202423165
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
  Id: 3287279447671946126
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 17950120500058051573
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 12639278576249428287
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 7667959770139884510
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 10037341523112282793
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 14646639446927626837
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 18426800566644039405
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 5500780034488035354
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
  ParentId: 13587479795202423165
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
  Id: 14921893831267655849
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 14169772764843945145
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 16151978755201847459
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 3290845739761605315
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 14249889757344686562
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 13041451722991598590
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 6558427059698558517
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 2002556969573819925
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
  ParentId: 13587479795202423165
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
  Id: 2648242465913372854
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 14964545000493087117
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 11283503831337646641
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 13167960271389152583
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 9183944557870668946
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 4468388766518795241
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 10980082448699931664
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 4956906972375446331
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
  ParentId: 13587479795202423165
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
  Id: 13962964637985456644
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 13440522480506786834
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 17842250787309071823
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 18089882774184181267
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 13640029937497001779
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 13296701874274406743
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 5991796652651835016
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 579226326707594880
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
  ParentId: 13587479795202423165
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
  Id: 15761408143217442622
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 698458153967896432
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 6403300997039640764
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 6712491633606973705
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 14232222972723997328
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 9794744464409018885
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 2090169158546123496
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
  ParentId: 13587479795202423165
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 2187419067249169823
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
  ParentId: 15701331535818524186
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
  Id: 14182463237920637762
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
  ParentId: 15701331535818524186
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
    FilePartitionName: "Chessboard Mini_7"
  }
  InstanceHistory {
    SelfId: 2155575710867322408
    SubobjectId: 1077707020070544286
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
