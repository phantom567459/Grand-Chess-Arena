Assets {
  Id: 5662685297387557118
  Name: "Custom Generic Water - No Distortion"
  PlatformAssetType: 13
  SerializationVersion: 94
  CustomMaterialAsset {
    BaseMaterialId: 3207751883619269408
    ParameterOverrides {
      Overrides {
        Name: "deep color"
        Color {
          G: 0.0135097643
          B: 0.51
          A: 1
        }
      }
      Overrides {
        Name: "shallow color"
        Color {
          G: 0.204039544
          B: 0.39
          A: 1
        }
      }
      Overrides {
        Name: "emissive"
        Float: 0.734231472
      }
      Overrides {
        Name: "material_scale"
        Float: 1
      }
      Overrides {
        Name: "opacity"
        Float: 1
      }
      Overrides {
        Name: "foam shape"
        Float: 1.83803105
      }
      Overrides {
        Name: "object displacement amount"
        Float: 0.828465104
      }
      Overrides {
        Name: "wind speed"
        Float: 0.187823445
      }
      Overrides {
        Name: "reflection brightness"
        Float: 0.302223742
      }
    }
    Assets {
      Id: 3207751883619269408
      Name: "Generic Water - No Distortion"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_nodistortion"
      }
    }
  }
}
