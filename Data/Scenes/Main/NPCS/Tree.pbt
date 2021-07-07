Name: "NPCS"
RootId: 17021586862039092520
Objects {
  Id: 3563967832669681647
  Name: "Roscoe"
  Transform {
    Location {
      X: -553.611206
      Y: -188.52124
      Z: 104.081123
    }
    Rotation {
      Yaw: 55.1643
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17021586862039092520
  ChildIds: 3092646374204342636
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14883153065648214995
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 12718536965920775932
      }
      SkinnedMeshes {
        Id: 10805917141212686032
      }
      SkinnedMeshes {
        Id: 9453799039998797246
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
    }
  }
}
Objects {
  Id: 3092646374204342636
  Name: "Dialogue Trigger"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3563967832669681647
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 5298181673578934932
      value {
        Overrides {
          Name: "Scale"
          Vector {
            X: 2.65297103
            Y: 1.78156817
            Z: 1
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 125.01181
            Y: -25.0027466
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -7.66033936
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 6394954477332070343
      value {
        Overrides {
          Name: "Name"
          String: "Dialogue Trigger"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 4032264046831903613
    }
  }
}
