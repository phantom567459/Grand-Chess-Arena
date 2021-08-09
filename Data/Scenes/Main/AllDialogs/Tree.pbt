Name: "AllDialogs"
RootId: 591907261068414620
Objects {
  Id: 11734528058520862781
  Name: "ServerScripts"
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
  ParentId: 591907261068414620
  ChildIds: 13858357071053761868
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
  Id: 13858357071053761868
  Name: "ChessTutorialServer"
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
  ParentId: 11734528058520862781
  UnregisteredParameters {
    Overrides {
      Name: "cs:Player_Chair"
      ObjectReference {
        SelfId: 12544323489165319219
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
      Id: 17345002933278434777
    }
  }
}
Objects {
  Id: 18387062197964615472
  Name: "ClientScripts"
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
  ParentId: 591907261068414620
  ChildIds: 770456324287800394
  ChildIds: 1105961350794401311
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
  Id: 1105961350794401311
  Name: "Tutorial Camera"
  Transform {
    Location {
      X: 170.361282
      Y: -687.722351
      Z: 271.112915
    }
    Rotation {
      Pitch: -50
      Yaw: 180
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18387062197964615472
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
  Camera {
    FreeControl: true
    InitialDistance: 50
    IsDistanceAdjustable: true
    MaxDistance: 200
    PositionOffset {
    }
    RotationOffset {
    }
    FieldOfView: 90
    ViewWidth: 1200
    RotationMode {
      Value: "mc:erotationmode:default"
    }
    MinPitch: -10
    MaxPitch: 80
    IsYawLimited: true
    MinYaw: -50
    MaxYaw: 50
    DoesPositionOffsetSpring: true
    UseAsAudioListener: true
  }
}
Objects {
  Id: 770456324287800394
  Name: "ChessTutorial"
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
  ParentId: 18387062197964615472
  UnregisteredParameters {
    Overrides {
      Name: "cs:TutorialCam"
      ObjectReference {
        SelfId: 1105961350794401311
      }
    }
    Overrides {
      Name: "cs:Tutorial_Man"
      ObjectReference {
        SelfId: 3563967832669681647
      }
    }
    Overrides {
      Name: "cs:Tutorial_Chair"
      ObjectReference {
        SelfId: 6857252807668119717
      }
    }
    Overrides {
      Name: "cs:Dialogue_System"
      AssetReference {
        Id: 14463863596116492073
      }
    }
    Overrides {
      Name: "cs:Black"
      ObjectReference {
        SelfId: 7352453329490609157
      }
    }
    Overrides {
      Name: "cs:White"
      ObjectReference {
        SelfId: 11015778145467560207
      }
    }
    Overrides {
      Name: "cs:Squares"
      ObjectReference {
        SelfId: 7291494062425416690
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
      Id: 10193431494394798096
    }
  }
}
Objects {
  Id: 17021586862039092520
  Name: "NPCS"
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
  ParentId: 591907261068414620
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
    FilePartitionName: "NPCS"
  }
  InstanceHistory {
    SelfId: 17021586862039092520
    SubobjectId: 16428396548400201455
    InstanceId: 9939008726453563535
    TemplateId: 12469408909370766820
  }
}
Objects {
  Id: 3314853668525193766
  Name: "DialogDatabases"
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
  ParentId: 591907261068414620
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
    FilePartitionName: "DialogDatabases"
  }
}
Objects {
  Id: 14969849715346481679
  Name: "Dialog System"
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
  ParentId: 591907261068414620
  UnregisteredParameters {
    Overrides {
      Name: "cs:database"
      ObjectReference {
        SelfId: 4497786214095494987
        SubObjectId: 3580054066914520204
        InstanceId: 9939008726453563535
        TemplateId: 12469408909370766820
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
        Id: 8453667748800982099
      }
    }
    Overrides {
      Name: "cs:choice_template"
      AssetReference {
        Id: 16678579324394704310
      }
    }
    Overrides {
      Name: "cs:click_sound"
      ObjectReference {
        SelfId: 2663552563207635305
      }
    }
    Overrides {
      Name: "cs:type_sound"
      ObjectReference {
        SelfId: 5283097717278951114
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
    FilePartitionName: "Dialog System"
  }
  InstanceHistory {
    SelfId: 14969849715346481679
    SubobjectId: 4184247561182906195
    InstanceId: 4661125958029212156
    TemplateId: 2072806868323490737
    WasRoot: true
  }
}
