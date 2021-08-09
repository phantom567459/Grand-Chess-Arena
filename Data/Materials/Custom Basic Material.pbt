Assets {
  Id: 5270817726987092894
  Name: "Custom Basic Material"
  PlatformAssetType: 13
  SerializationVersion: 94
  CustomMaterialAsset {
    BaseMaterialId: 10184847056121543272
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.179999948
          G: 0.0321854241
          A: 1
        }
      }
      Overrides {
        Name: "specular"
        Float: 0.0124096572
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 0.0773019791
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.190000057
          G: 0.0830463842
          A: 1
        }
      }
    }
    Assets {
      Id: 10184847056121543272
      Name: "Basic Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_pbr_material_001"
      }
    }
  }
}
