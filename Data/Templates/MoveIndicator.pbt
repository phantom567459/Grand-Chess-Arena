Assets {
  Id: 12177081746179529573
  Name: "MoveIndicator"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10761917122064125758
      Objects {
        Id: 10761917122064125758
        Name: "MoveIndicator"
        Transform {
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 16873920282989044967
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:ethrustermesh:4"
            }
          }
          Overrides {
            Name: "bp:Displacement Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 3.93438292
          }
          Overrides {
            Name: "bp:Use Thrust Value"
            Bool: false
          }
          Overrides {
            Name: "bp:Thrust Amount"
            Float: 0.698972046
          }
          Overrides {
            Name: "bp:Bend Thrust Cone"
            Float: 0
          }
          Overrides {
            Name: "bp:Z Height Brightness Multiplier"
            Float: 0.458954
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
        Blueprint {
          BlueprintAsset {
            Id: 2877924088155017027
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:low"
        }
      }
    }
    Assets {
      Id: 2877924088155017027
      Name: "Thruster Flame VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_thruster_flame"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 91
}
