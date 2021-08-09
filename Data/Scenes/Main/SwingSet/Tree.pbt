Name: "SwingSet"
RootId: 8381074493655893719
Objects {
  Id: 14185683532334193825
  Name: "Swings"
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
  ParentId: 8381074493655893719
  ChildIds: 18103629154690825313
  ChildIds: 6878250616752496350
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
}
Objects {
  Id: 6878250616752496350
  Name: "Swings"
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
  ParentId: 14185683532334193825
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
    FilePartitionName: "Swings"
  }
}
Objects {
  Id: 18103629154690825313
  Name: "Swing"
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
  ParentId: 14185683532334193825
  UnregisteredParameters {
    Overrides {
      Name: "cs:Swing1"
      ObjectReference {
        SelfId: 14018021382364526364
      }
    }
    Overrides {
      Name: "cs:Swing2"
      ObjectReference {
        SelfId: 3173697199681263262
      }
    }
    Overrides {
      Name: "cs:MaxRotation"
      Float: 20
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
      Id: 15069298923968486235
    }
  }
}
Objects {
  Id: 8156179800182027865
  Name: "A-Frame2"
  Transform {
    Location {
      X: -12.9160156
      Y: -183.968506
      Z: -56.1974792
    }
    Rotation {
      Roll: 1.44380987
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8381074493655893719
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
    FilePartitionName: "A-Frame2"
  }
}
Objects {
  Id: 8556684812902665413
  Name: "A-Frame1"
  Transform {
    Location {
      X: 111.620605
      Y: 624.49231
      Z: -204.93219
    }
    Rotation {
      Roll: -0.918487549
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8381074493655893719
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
    FilePartitionName: "A-Frame1"
  }
}
Objects {
  Id: 11434201763444022031
  Name: "Cube"
  Transform {
    Location {
      X: -13.652832
      Y: 184.20874
      Z: 159.24585
    }
    Rotation {
    }
    Scale {
      X: 0.586767614
      Y: 6.94466972
      Z: 0.388494134
    }
  }
  ParentId: 8381074493655893719
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13324718775513582483
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
