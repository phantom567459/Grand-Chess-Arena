Assets {
  Id: 13481677695816259049
  Name: "sky 3: Moonlit Night"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16044209566392303221
      Objects {
        Id: 16044209566392303221
        Name: "sky 3: Moonlit Night"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 8317343941128027445
        ChildIds: 11548083044844411320
        ChildIds: 1008219431945699687
        ChildIds: 3679925399222403161
        ChildIds: 4303877194449492603
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
          IsGroup: true
        }
      }
      Objects {
        Id: 8317343941128027445
        Name: "Sky Dome"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -1.37802124
            Yaw: -50.8678284
            Roll: -26.1325684
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16044209566392303221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Zenith Color"
            Color {
              A: 0.886000037
            }
          }
          Overrides {
            Name: "bp:Horizon Color"
            Color {
              R: 0.00761589268
              B: 0.0499999523
              A: 0.895000041
            }
          }
          Overrides {
            Name: "bp:Haze Color"
            Color {
              R: 0.013708625
              B: 0.0900000334
              A: 1
            }
          }
          Overrides {
            Name: "bp:Use Sun Color for Cloud Color"
            Bool: false
          }
          Overrides {
            Name: "bp:Cloud Ambient Brightness"
            Float: 7
          }
          Overrides {
            Name: "bp:Cloud Rim Brightness"
            Float: 4
          }
          Overrides {
            Name: "bp:Cloud Opacity"
            Float: 1
          }
          Overrides {
            Name: "bp:Cloud Ambient Color"
            Color {
              R: 0.026
              G: 0.026
              B: 0.026
              A: 0.0550000034
            }
          }
          Overrides {
            Name: "bp:Cloud Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.46
            }
          }
          Overrides {
            Name: "bp:Cloud Shape"
            Enum {
              Value: "mc:ecloudshapes:1"
            }
          }
          Overrides {
            Name: "bp:Cloud Lighting Brightness"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Cloud Wisp Opacity"
            Float: 0.689047337
          }
          Overrides {
            Name: "bp:Cloud Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Brightness"
            Float: 1.40129745
          }
          Overrides {
            Name: "bp:Background Clouds"
            Bool: true
          }
          Overrides {
            Name: "bp:High Cloud Index"
            Enum {
              Value: "mc:ehighaltitudecloudshapes:2"
            }
          }
          Overrides {
            Name: "bp:High Cloud Opacity"
            Float: 0
          }
          Overrides {
            Name: "bp:High Cloud Noise Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:High Cloud Noise Scale"
            Float: 1
          }
          Overrides {
            Name: "bp:Clouds"
            Bool: true
          }
          Overrides {
            Name: "bp:Cloud Wisp Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Cloud Rim Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.467
            }
          }
          Overrides {
            Name: "bp:Cloud Wisp Color"
            Color {
              R: 0.420000017
              G: 0.420000017
              B: 0.420000017
              A: 0.561000049
            }
          }
          Overrides {
            Name: "bp:Cloud Sun Behind Transmission"
            Float: 2
          }
          Overrides {
            Name: "bp:Sky Influence On Clouds"
            Float: 0
          }
          Overrides {
            Name: "bp:Disable Cloud Mask"
            Bool: true
          }
          Overrides {
            Name: "bp:High Cloud Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.457000017
            }
          }
          Overrides {
            Name: "bp:High Cloud Brightness"
            Float: 0.605932772
          }
          Overrides {
            Name: "bp:High Cloud Speed"
            Float: 1
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
        Blueprint {
          BlueprintAsset {
            Id: 7887238662729938253
          }
        }
      }
      Objects {
        Id: 11548083044844411320
        Name: "Skylight"
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
        ParentId: 16044209566392303221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Index"
            Int: 3
          }
          Overrides {
            Name: "bp:Occlusion Contrast"
            Float: 0
          }
          Overrides {
            Name: "bp:Intensity"
            Float: 0.543370783
          }
          Overrides {
            Name: "bp:Occlusion Tint"
            Color {
              R: 0.0274509825
              G: 0.0274509825
              B: 0.0392156877
              A: 1
            }
          }
          Overrides {
            Name: "bp:Tint Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Blend Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:Blend Target Image"
            Enum {
              Value: "mc:eambientcubemapssmall:0"
            }
          }
          Overrides {
            Name: "bp:Use Captured Sky"
            Bool: false
          }
          Overrides {
            Name: "bp:Cast Shadows"
            Bool: true
          }
          Overrides {
            Name: "bp:Cast Volumetric Shadows"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 11515840070784317904
          }
        }
      }
      Objects {
        Id: 1008219431945699687
        Name: "Sun With Halo 02"
        Transform {
          Location {
            Z: -700
          }
          Rotation {
            Pitch: -31.2846127
            Yaw: 36.5659103
            Roll: 2.15560021e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16044209566392303221
        ChildIds: 8851763995703140413
        UnregisteredParameters {
          Overrides {
            Name: "bp:Use Temperature"
            Bool: false
          }
          Overrides {
            Name: "bp:Light Shaft Bloom"
            Bool: false
          }
          Overrides {
            Name: "bp:Cast Volumetric Shadows"
            Bool: false
          }
          Overrides {
            Name: "bp:Light Shaft Bloom Threshold"
            Float: 3
          }
          Overrides {
            Name: "bp:Light Shaft Bloom Scale"
            Float: 1
          }
          Overrides {
            Name: "bp:Size"
            Float: 35
          }
          Overrides {
            Name: "bp:Shape"
            Enum {
              Value: "mc:esundiscshapes:3"
            }
          }
          Overrides {
            Name: "bp:Draw Sun"
            Bool: true
          }
          Overrides {
            Name: "bp:Sun Disc Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Light Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Intensity"
            Float: 0.882478237
          }
          Overrides {
            Name: "bp:Light Shaft Occlusion"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 16910278292812118833
          }
        }
      }
      Objects {
        Id: 8851763995703140413
        Name: "SunDisc"
        Transform {
          Location {
            X: -9795875
            Y: 1167.53125
            Z: -256.8125
          }
          Rotation {
          }
          Scale {
            X: 10000
            Y: 10000
            Z: 10000
          }
        }
        ParentId: 1008219431945699687
        ChildIds: 12199780780898975674
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 5117326109845707677
          }
          Teams {
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 12199780780898975674
        Name: "Sun Halo"
        Transform {
          Location {
            Y: -1.5258788e-08
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8851763995703140413
        UnregisteredParameters {
          Overrides {
            Name: "bp:Halo Element Type"
            Enum {
              Value: "mc:ehaloelementtype:0"
            }
          }
          Overrides {
            Name: "bp:Element Texture"
            Enum {
              Value: "mc:ehaloelementtexture:6"
            }
          }
          Overrides {
            Name: "bp:No Edge Fade"
            Bool: false
          }
          Overrides {
            Name: "bp:Width"
            Float: 0.647370875
          }
          Overrides {
            Name: "bp:Distance"
            Float: -30
          }
          Overrides {
            Name: "bp:Height"
            Float: 1.06175303
          }
          Overrides {
            Name: "bp:Count"
            Int: 7
          }
          Overrides {
            Name: "bp:Width +/-"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Height +/-"
            Float: 0.1
          }
          Overrides {
            Name: "bp:Distance +/-"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 10
              G: 9.72617435
              B: 9.18643188
              A: 1
            }
          }
          Overrides {
            Name: "bp:Texture Repetitions X"
            Float: 1
          }
          Overrides {
            Name: "bp:Texture Repetitions Y"
            Float: 1
          }
          Overrides {
            Name: "bp:Top Color"
            Color {
              R: 0.929999948
              G: 0.7905
              A: 0.39200002
            }
          }
          Overrides {
            Name: "bp:Middle Color"
            Color {
              R: 1
              G: 1
              B: 0.37
              A: 0.629
            }
          }
          Overrides {
            Name: "bp:Bottom Color"
            Color {
              R: 0.86
              G: 0.716666698
              A: 1
            }
          }
          Overrides {
            Name: "bp:Face Camera"
            Bool: true
          }
          Overrides {
            Name: "bp:Emissive"
            Float: 0
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 10988486045141043269
          }
        }
      }
      Objects {
        Id: 3679925399222403161
        Name: "Star Dome"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -43.7209167
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16044209566392303221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Star Visibility"
            Float: 5
          }
          Overrides {
            Name: "bp:Star Brightness"
            Float: 0.964918256
          }
          Overrides {
            Name: "bp:Color Gradient"
            Enum {
              Value: "mc:ecolorgradients:12"
            }
          }
          Overrides {
            Name: "bp:Star Color Cycle"
            Float: 22.6775551
          }
          Overrides {
            Name: "bp:Star Color Intensity"
            Float: 1.38721836
          }
          Overrides {
            Name: "bp:Real Stars"
            Bool: true
          }
          Overrides {
            Name: "bp:Twinkle"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 12344193518355455075
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 4303877194449492603
        Name: "Star Dome"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 34.8450089
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16044209566392303221
        UnregisteredParameters {
          Overrides {
            Name: "bp:Star Visibility"
            Float: 5
          }
          Overrides {
            Name: "bp:Star Brightness"
            Float: 0.964918256
          }
          Overrides {
            Name: "bp:Color Gradient"
            Enum {
              Value: "mc:ecolorgradients:12"
            }
          }
          Overrides {
            Name: "bp:Star Color Cycle"
            Float: 22.6775551
          }
          Overrides {
            Name: "bp:Star Color Intensity"
            Float: 1.38721836
          }
          Overrides {
            Name: "bp:Real Stars"
            Bool: true
          }
          Overrides {
            Name: "bp:Twinkle"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 12344193518355455075
          }
          TeamSettings {
          }
        }
      }
    }
    Assets {
      Id: 7887238662729938253
      Name: "Sky Dome"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_Sky"
      }
    }
    Assets {
      Id: 11515840070784317904
      Name: "Skylight"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_Skylight"
      }
    }
    Assets {
      Id: 16910278292812118833
      Name: "Sun Light"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_SunLight"
      }
    }
    Assets {
      Id: 5117326109845707677
      Name: "Plane 4m - One Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_plane_4m_001"
      }
    }
    Assets {
      Id: 10988486045141043269
      Name: "Sun Halo"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_SunHalo"
      }
    }
    Assets {
      Id: 12344193518355455075
      Name: "Star Dome"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_StarDome"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "This CC is jam packed with 11 completely unique skyboxes for any game!\r\n\r\nA ReadME file has been included with these templates that includes a brief description of each sky in this kit.\r\nSimply drag and drop whichever sky you would like into your hierarchy after removing the default sky!"
  }
  SerializationVersion: 94
  DirectlyPublished: true
}
