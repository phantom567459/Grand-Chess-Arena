Assets {
  Id: 865640699426846004
  Name: "plantbox_tree"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3957535757191611910
      Objects {
        Id: 3957535757191611910
        Name: "plantbox_tree"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4552764418194189052
        ChildIds: 76497559464996282
        ChildIds: 14316220406816518901
        ChildIds: 12587358412428648331
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
          IsGroup: true
        }
      }
      Objects {
        Id: 4552764418194189052
        Name: "Urban Pipe Coupling 05"
        Transform {
          Location {
            X: -0.933258057
            Y: -3.09332275
          }
          Rotation {
          }
          Scale {
            X: 4.70000029
            Y: 4.70000029
            Z: 1.89999986
          }
        }
        ParentId: 3957535757191611910
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0910000056
              G: 0.0910000056
              B: 0.0910000056
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2106260343966887116
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12610149741243116648
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
      }
      Objects {
        Id: 76497559464996282
        Name: "Cylinder - Polished"
        Transform {
          Location {
            X: -3.45510864
            Y: -2.37640381
            Z: 2.31182575
          }
          Rotation {
          }
          Scale {
            X: 1.2
            Y: 1.2
            Z: -0.0463610701
          }
        }
        ParentId: 3957535757191611910
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2106260343966887116
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0910000056
              G: 0.0910000056
              B: 0.0910000056
              A: 1
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12905923173550510229
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
      }
      Objects {
        Id: 14316220406816518901
        Name: "Bush 01"
        Transform {
          Location {
            X: 2.1328125
            Y: 1.87075806
            Z: 3.69136047
          }
          Rotation {
          }
          Scale {
            X: 0.44905147
            Y: -0.453883648
            Z: 0.505367756
          }
        }
        ParentId: 3957535757191611910
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 2531026809682951781
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
      }
      Objects {
        Id: 12587358412428648331
        Name: "Tree Birch 01"
        Transform {
          Location {
            X: 2.2555542
            Y: 3.59896851
            Z: 21.3094177
          }
          Rotation {
            Yaw: -138.771683
          }
          Scale {
            X: 0.459317267
            Y: 0.459317267
            Z: 0.459317267
          }
        }
        ParentId: 3957535757191611910
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Trunk:color"
            Color {
              R: 0.282
              G: 0.153022319
              B: 0.052875
              A: 1
            }
          }
          Overrides {
            Name: "ma:Nature_Trunk:id"
            AssetReference {
              Id: 8847320080432601284
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 2333047351719772958
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
      }
    }
    Assets {
      Id: 12610149741243116648
      Name: "Urban Pipe Wrap 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_pipes_acc_coupling_005_ref"
      }
    }
    Assets {
      Id: 12905923173550510229
      Name: "Cylinder - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_test_001"
      }
    }
    Assets {
      Id: 2531026809682951781
      Name: "Bush 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bush_generic_001"
      }
    }
    Assets {
      Id: 2333047351719772958
      Name: "Tree Birch 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tree_birch_001"
      }
    }
    Assets {
      Id: 8847320080432601284
      Name: "Bark Pine 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bark_pine_001_uv"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Just a very basic easily customized planter to place into your town!"
  }
  SerializationVersion: 91
  DirectlyPublished: true
}
