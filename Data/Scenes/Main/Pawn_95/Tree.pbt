Name: "Pawn_95"
RootId: 18050225871621333919
Objects {
  Id: 17461549564898286213
  Name: "Base"
  Transform {
    Location {
      Z: -100
    }
    Rotation {
    }
    Scale {
      X: 2
      Y: 2
      Z: 0.5
    }
  }
  ParentId: 18050225871621333919
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9366836851447681229
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 18139756495790331147
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 17461549564898286213
    SubobjectId: 16234648395584147251
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
