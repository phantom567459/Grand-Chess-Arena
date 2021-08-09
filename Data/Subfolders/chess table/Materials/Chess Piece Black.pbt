Assets {
  Id: 9366836851447681229
  Name: "Chess Piece Black"
  PlatformAssetType: 13
  SerializationVersion: 94
  CustomMaterialAsset {
    BaseMaterialId: 12792287558144180312
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.580000043
          G: 0.253509969
          A: 1
        }
      }
      Overrides {
        Name: "u_tiles"
        Float: 64
      }
      Overrides {
        Name: "v_tiles"
        Float: 64
      }
    }
    Assets {
      Id: 12792287558144180312
      Name: "Wood Planks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_dark_001_uv"
      }
    }
  }
}
