Name: "VFX_3"
RootId: 16873920282989044967
Objects {
  Id: 9745269192503981090
  Name: "Level Up VFX"
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
  ParentId: 16873920282989044967
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 2515887100916932019
    }
    TeamSettings {
    }
    Vfx {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 1435974761188503068
  Name: "MoveIndicator"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16873920282989044967
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10761917122064125758
      value {
        Overrides {
          Name: "Name"
          String: "MoveIndicator"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 29.6013184
            Y: 7.74816895
            Z: 4.55511475
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Roll: -180
          }
        }
        Overrides {
          Name: "AutoPlay"
          Bool: false
        }
      }
    }
    TemplateAsset {
      Id: 12177081746179529573
    }
  }
}
