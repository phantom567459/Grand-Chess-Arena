Name: "Pawn_32"
RootId: 9982612935710027580
Objects {
  Id: 7128515719376414300
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
  ParentId: 9982612935710027580
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7034271320763119631
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
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
    SelfId: 16397025939847548533
    SubobjectId: 17335230540045982659
    InstanceId: 1408243180232436835
    TemplateId: 9483465140194761161
  }
}
