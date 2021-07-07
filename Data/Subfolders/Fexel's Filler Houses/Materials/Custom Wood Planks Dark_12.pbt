Assets {
  Id: 13792663099929470165
  Name: "Custom Wood Planks Dark_12"
  PlatformAssetType: 13
  SerializationVersion: 91
  CustomMaterialAsset {
    BaseMaterialId: 16884155995964102364
    ParameterOverrides {
      Overrides {
        Name: "rotate_material"
        Float: 90
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 0.582458735
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "gradient_direction"
        Vector {
          Z: -1
        }
      }
      Overrides {
        Name: "gradient_color"
        Color {
          G: 0.0599999428
          B: 0.00516557181
          A: 1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.142878741
      }
    }
    Assets {
      Id: 16884155995964102364
      Name: "Wood Planks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_dark_001_uv"
      }
    }
  }
}
