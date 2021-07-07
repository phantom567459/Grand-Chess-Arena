Assets {
  Id: 7048726276681564762
  Name: "Custom Lower Trim - Outer from Craftsman Wall 01 Half "
  PlatformAssetType: 13
  SerializationVersion: 91
  CustomMaterialAsset {
    BaseMaterialId: 17299611469251270152
    ParameterOverrides {
      Overrides {
        Name: "roughness_multiplier"
        Float: 0.715488791
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.160229877
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.443643272
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.133874148
          G: 0.203125
          B: 0.13
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "u_offset"
        Float: 0.258556962
      }
    }
    Assets {
      Id: 17299611469251270152
      Name: "Craftsman Stone Trim"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_trim_craftsman_lowerTrimOuter"
      }
    }
  }
}
