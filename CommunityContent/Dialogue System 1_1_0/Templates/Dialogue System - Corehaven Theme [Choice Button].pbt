Assets {
  Id: 17314207712770390379
  Name: "Dialogue System - Corehaven Theme [Choice Button]"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6075688563779599607
      Objects {
        Id: 6075688563779599607
        Name: "Dialogue System - Corehaven Theme [Choice Button]"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4948709108266095408
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
        Control {
          Height: 40
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Button {
            FontColor {
              R: 0.382291615
              G: 1
              B: 0.517384529
              A: 1
            }
            FontSize: 21
            ButtonColor {
              R: 1
              G: 1
              B: 1
            }
            HoveredColor {
              R: 0.65625
              G: 0.474936754
              B: 0.218749985
              A: 0.3
            }
            PressedColor {
              R: 0.65625
              G: 0.474936754
              B: 0.218749985
              A: 0.3
            }
            DisabledColor {
              R: 1
              G: 1
              B: 1
            }
            Brush {
              Id: 12467261168345974505
            }
            IsButtonEnabled: true
            ClickMode {
              Value: "mc:ebuttonclickmode:default"
            }
            Font {
              Id: 16335491782417957814
            }
            Justification {
              Value: "mc:etextjustify:left"
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
    }
    Assets {
      Id: 12467261168345974505
      Name: "BG Flat 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundNoOutline_020"
      }
    }
    Assets {
      Id: 16335491782417957814
      Name: "Teko"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "TekoRegular_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "The Dialogue System will allow you to create conversations between characters and players with ease. It is beginner friendly, but also packs some powerful features for the more experienced creator. It comes with various examples of the features so you can get up and running quickly.\r\n\r\nNo code required.  Easy branching with player choices.  Advanced features for more experienced creators.\r\n\r\nSee documentation:  https://popthosepringles.github.io/Core-Dialogue-System-Docs\r\n\r\nhttps://www.youtube.com/watch?v=31H9gU-kPzY\r\n\r\n--------\r\n\r\n1.1.0\r\n  - Added support for animation stances and animations per conversation, entry, and choice.\r\n  - Added support to turn of click progress to force players to use the Next and Close buttons (this is enabled by default for QOL)."
  }
  SerializationVersion: 94
  DirectlyPublished: true
}
