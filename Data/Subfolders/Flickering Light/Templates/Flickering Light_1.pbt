Assets {
  Id: 12799813253052341790
  Name: "Flickering Light"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14489668191392126880
      Objects {
        Id: 14489668191392126880
        Name: "Flickering Light"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4779816041193105653
        UnregisteredParameters {
          Overrides {
            Name: "cs:MinRadius"
            Float: 400
          }
          Overrides {
            Name: "cs:MaxRadius"
            Float: 500
          }
          Overrides {
            Name: "cs:FlickerSpeed"
            Float: 36
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 4779816041193105653
        Name: "ClientContext"
        Transform {
          Location {
            X: 1344.66626
            Y: -1619.78
            Z: -116.522766
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14489668191392126880
        ChildIds: 8585656097248620797
        ChildIds: 3041555713021589737
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 8585656097248620797
        Name: "FlickeringLightClient"
        Transform {
          Location {
            X: 1344.66626
            Y: -1619.78
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4779816041193105653
        UnregisteredParameters {
          Overrides {
            Name: "cs:Light"
            ObjectReference {
              SubObjectId: 3041555713021589737
            }
          }
          Overrides {
            Name: "cs:MinRadius"
            Float: 400
          }
          Overrides {
            Name: "cs:MaxRadius"
            Float: 500
          }
          Overrides {
            Name: "cs:FlickerSpeed"
            Float: 36
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 14489668191392126880
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
        Script {
          ScriptAsset {
            Id: 9320315537490701031
          }
        }
      }
      Objects {
        Id: 3041555713021589737
        Name: "Point Light"
        Transform {
          Location {
            X: -1344.66626
            Y: 1619.78
            Z: 116.522766
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4779816041193105653
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Light {
          Intensity: 50
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 400
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Change the values on the root of the object to control the light.\r\n\r\nMinRadius = The smallest the light\'s attenuation radius should get\r\nMaxRadius = The largest the light\'s attenuation radius should get\r\nFlickerSpeed = Higher speed means a faster flicker\r\n\r\nThis is not networked"
  }
  SerializationVersion: 94
  DirectlyPublished: true
}
