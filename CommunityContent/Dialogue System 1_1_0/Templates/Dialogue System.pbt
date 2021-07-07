Assets {
  Id: 16651021988879073918
  Name: "Dialogue System"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4184247561182906195
      Objects {
        Id: 4184247561182906195
        Name: "Dialogue System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4617530655213670993
        ChildIds: 14381341918554917090
        UnregisteredParameters {
          Overrides {
            Name: "cs:database"
            ObjectReference {
              SelfId: 10479968696430413188
              SubObjectId: 10445891898565376587
              InstanceId: 5182657798257186647
              TemplateId: 6755024686228237351
            }
          }
          Overrides {
            Name: "cs:show_warnings"
            Bool: true
          }
          Overrides {
            Name: "cs:pulse_next_close_buttons"
            Bool: false
          }
          Overrides {
            Name: "cs:animate_letters"
            Bool: true
          }
          Overrides {
            Name: "cs:letter_speed"
            Float: 0.03
          }
          Overrides {
            Name: "cs:dialogue_template"
            AssetReference {
              Id: 3442206205192650797
            }
          }
          Overrides {
            Name: "cs:choice_template"
            AssetReference {
              Id: 12104364566754124390
            }
          }
          Overrides {
            Name: "cs:click_sound"
            ObjectReference {
              SubObjectId: 15084858688822649909
            }
          }
          Overrides {
            Name: "cs:type_sound"
            ObjectReference {
              SubObjectId: 13618793593882370966
            }
          }
          Overrides {
            Name: "cs:play_click_sound"
            Bool: true
          }
          Overrides {
            Name: "cs:play_type_sound"
            Bool: true
          }
          Overrides {
            Name: "cs:min_speaker_width"
            Float: 125
          }
          Overrides {
            Name: "cs:click_progress"
            Bool: true
          }
          Overrides {
            Name: "cs:database:tooltip"
            String: "The database of conversations to use."
          }
          Overrides {
            Name: "cs:show_warnings:tooltip"
            String: "If enabled, then any issue with the system will be displayed in the Event Log."
          }
          Overrides {
            Name: "cs:pulse_next_close_buttons:tooltip"
            String: "If enabled, then \"Next\" and \"Exit\" buttons will pulse to be more visible to the player."
          }
          Overrides {
            Name: "cs:animate_letters:tooltip"
            String: "If enabled, then the letters of the text will animate in like a typing effect."
          }
          Overrides {
            Name: "cs:letter_speed:tooltip"
            String: "The speed of the animation effect."
          }
          Overrides {
            Name: "cs:dialogue_template:tooltip"
            String: "The dialogue template to use.  This can be changed at runtime."
          }
          Overrides {
            Name: "cs:choice_template:tooltip"
            String: "The template to use when displaying choices to the player.  This can be changed at runtime."
          }
          Overrides {
            Name: "cs:click_sound:tooltip"
            String: "The sound to use when the player clicks on the dialogue and buttons."
          }
          Overrides {
            Name: "cs:type_sound:tooltip"
            String: "The sound to use for the typing effect."
          }
          Overrides {
            Name: "cs:play_click_sound:tooltip"
            String: "If enabled, the click sound will be played."
          }
          Overrides {
            Name: "cs:play_type_sound:tooltip"
            String: "If enabled, the type sound will be played."
          }
          Overrides {
            Name: "cs:min_speaker_width:tooltip"
            String: "The min width of the speaker element that shows the name of the NPC / You.  This is dynamically set for each entry."
          }
          Overrides {
            Name: "cs:click_progress:tooltip"
            String: "If enabled, then the player does not need to click on the Next or Close button to progress the dialogue."
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
        Folder {
          IsFilePartition: true
          FilePartitionName: "Dialogue System"
        }
      }
      Objects {
        Id: 4617530655213670993
        Name: "README"
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
        ParentId: 4184247561182906195
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
        Script {
          ScriptAsset {
            Id: 6997047049258970015
          }
        }
      }
      Objects {
        Id: 14381341918554917090
        Name: "System"
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
        ParentId: 4184247561182906195
        ChildIds: 798466060464107368
        ChildIds: 401946613759196655
        ChildIds: 805598399629829480
        ChildIds: 3163492330995449369
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
        Folder {
          IsFilePartition: true
          FilePartitionName: "System"
        }
      }
      Objects {
        Id: 798466060464107368
        Name: "UI"
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
        ParentId: 14381341918554917090
        ChildIds: 3505083985360487875
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        NetworkContext {
        }
      }
      Objects {
        Id: 3505083985360487875
        Name: "Dialogue UI Container"
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
        ParentId: 798466060464107368
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
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
            ContentType {
              Value: "mc:ecanvascontenttype:dynamic"
            }
            Opacity: 1
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
      Objects {
        Id: 401946613759196655
        Name: "Client"
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
        ParentId: 14381341918554917090
        ChildIds: 9690799066519609096
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        NetworkContext {
        }
      }
      Objects {
        Id: 9690799066519609096
        Name: "Dialogue_Manager_Client"
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
        ParentId: 401946613759196655
        UnregisteredParameters {
          Overrides {
            Name: "cs:root"
            ObjectReference {
              SubObjectId: 4184247561182906195
            }
          }
          Overrides {
            Name: "cs:ui_container"
            ObjectReference {
              SubObjectId: 3505083985360487875
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 17183121788339607211
          }
        }
      }
      Objects {
        Id: 805598399629829480
        Name: "Server"
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
        ParentId: 14381341918554917090
        ChildIds: 2588274973270973881
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
        NetworkContext {
          Type: Server
        }
      }
      Objects {
        Id: 2588274973270973881
        Name: "Dialogue_Manager_Server"
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
        ParentId: 805598399629829480
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
        Script {
          ScriptAsset {
            Id: 11908349127229737153
          }
        }
      }
      Objects {
        Id: 3163492330995449369
        Name: "Audio"
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
        ParentId: 14381341918554917090
        ChildIds: 15084858688822649909
        ChildIds: 13618793593882370966
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        NetworkContext {
        }
      }
      Objects {
        Id: 15084858688822649909
        Name: "Click Sound"
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
        ParentId: 3163492330995449369
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
        AudioInstance {
          AudioAsset {
            Id: 1569886613314956351
          }
          Volume: 0.8
          Falloff: -1
          Radius: -1
        }
      }
      Objects {
        Id: 13618793593882370966
        Name: "Type Sound"
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
        ParentId: 3163492330995449369
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
        AudioInstance {
          AudioAsset {
            Id: 17640614121248612054
          }
          Volume: 0.5
          Falloff: -1
          Radius: -1
          StopTime: 0.01
        }
      }
    }
    Assets {
      Id: 1569886613314956351
      Name: "Button Click 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfxui_click_01_Cue"
      }
    }
    Assets {
      Id: 17640614121248612054
      Name: "UI Pop Single 04 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_ui_pop_single_04_Cue_ref"
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
  SerializationVersion: 91
  DirectlyPublished: true
}
