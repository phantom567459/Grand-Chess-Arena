Assets {
  Id: 3887011028839509350
  Name: "Terrain Material_5"
  PlatformAssetType: 13
  SerializationVersion: 94
  CustomMaterialAsset {
    BaseMaterialId: 435783121932072600
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material4"
        AssetReference {
          Id: 14429094738073528827
        }
      }
      Overrides {
        Name: "cmpc:Material4"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "cmp:Material4_Sides"
        AssetReference {
          Id: 15074903890707467838
        }
      }
    }
    Assets {
      Id: 435783121932072600
      Name: "Terrain Composite Triplanar Complex Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_terrain_composite_triplanar_blend_001_wa"
      }
    }
    Assets {
      Id: 14429094738073528827
      Name: "Dirt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "dirt_001"
      }
    }
    Assets {
      Id: 15074903890707467838
      Name: "Grass and Soil"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_003_uv"
      }
    }
  }
}
