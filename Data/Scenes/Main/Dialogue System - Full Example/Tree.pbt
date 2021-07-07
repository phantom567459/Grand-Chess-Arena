Name: "Dialogue System - Full Example"
RootId: 8719774025564221451
Objects {
  Id: 4497786214095494987
  Name: "Dialogue System Database"
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
  ParentId: 8719774025564221451
  ChildIds: 16486974311553108468
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 4497786214095494987
    SubobjectId: 3580054066914520204
    InstanceId: 9939008726453563535
    TemplateId: 12469408909370766820
  }
}
Objects {
  Id: 16486974311553108468
  Name: "Roscoe"
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
  ParentId: 4497786214095494987
  ChildIds: 16362885788570393580
  UnregisteredParameters {
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:enable_ui_interact"
      Bool: true
    }
    Overrides {
      Name: "cs:enable_ui_cursor"
      Bool: true
    }
    Overrides {
      Name: "cs:hide_reticle"
      Bool: true
    }
    Overrides {
      Name: "cs:disable_player_jump"
      Bool: true
    }
    Overrides {
      Name: "cs:disable_player_crouch"
      Bool: true
    }
    Overrides {
      Name: "cs:disable_player_mount"
      Bool: true
    }
    Overrides {
      Name: "cs:disable_player_look"
      Bool: true
    }
    Overrides {
      Name: "cs:disable_player_movement"
      Bool: true
    }
    Overrides {
      Name: "cs:dialogue_trigger"
      ObjectReference {
        SelfId: 13755946386333939386
        SubObjectId: 6394954477332070343
        InstanceId: 3092646374204342636
        TemplateId: 4032264046831903613
      }
    }
    Overrides {
      Name: "cs:name"
      String: "Roscoe"
    }
    Overrides {
      Name: "cs:call_event"
      String: ""
    }
    Overrides {
      Name: "cs:show_indicator"
      Bool: true
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
      Id: 628643202886343570
    }
  }
  InstanceHistory {
    SelfId: 16486974311553108468
    SubobjectId: 16936014304001620531
    InstanceId: 9939008726453563535
    TemplateId: 12469408909370766820
  }
}
Objects {
  Id: 16362885788570393580
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 16486974311553108468
  ChildIds: 4915002423914446568
  ChildIds: 3950037532538334767
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "{name}, what are you standing around for soldier?"
    }
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:condition"
      String: ""
    }
    Overrides {
      Name: "cs:call_event"
      String: ""
    }
    Overrides {
      Name: "cs:animation_stance_loop"
      Bool: false
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
      Id: 11968027505806163616
    }
  }
  InstanceHistory {
    SelfId: 16362885788570393580
    SubobjectId: 17064443972558579755
    InstanceId: 9939008726453563535
    TemplateId: 12469408909370766820
  }
}
Objects {
  Id: 3950037532538334767
  Name: "Dialogue_Player_Choice"
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
  ParentId: 16362885788570393580
  ChildIds: 6657134262885751758
  UnregisteredParameters {
    Overrides {
      Name: "cs:id"
      Int: 2
    }
    Overrides {
      Name: "cs:text"
      String: "Umm, I\'m going to leave now."
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
      Id: 1851571629964454721
    }
  }
  InstanceHistory {
    SelfId: 3950037532538334767
    SubobjectId: 4113170446990843368
    InstanceId: 9939008726453563535
    TemplateId: 12469408909370766820
  }
}
Objects {
  Id: 6657134262885751758
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 3950037532538334767
  UnregisteredParameters {
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:text"
      String: "Get out there and win some games!"
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
      Id: 11968027505806163616
    }
  }
  InstanceHistory {
    SelfId: 6657134262885751758
    SubobjectId: 6027879916581513225
    InstanceId: 9939008726453563535
    TemplateId: 12469408909370766820
  }
}
Objects {
  Id: 4915002423914446568
  Name: "Dialogue_Player_Choice"
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
  ParentId: 16362885788570393580
  ChildIds: 10659522720223201820
  UnregisteredParameters {
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:text"
      String: "Well, I was hoping you could teach me chess."
    }
    Overrides {
      Name: "cs:call_event"
      String: "tutorial_started"
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
      Id: 1851571629964454721
    }
  }
  InstanceHistory {
    SelfId: 4915002423914446568
    SubobjectId: 5471917692580842799
    InstanceId: 9939008726453563535
    TemplateId: 12469408909370766820
  }
}
Objects {
  Id: 10659522720223201820
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 4915002423914446568
  ChildIds: 8693547413848438571
  UnregisteredParameters {
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:text"
      String: "So you\'re here to learn about the best board game ever invented?  Great! Let\'s get started."
    }
    Overrides {
      Name: "cs:call_event"
      String: ""
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
      Id: 11968027505806163616
    }
  }
  InstanceHistory {
    SelfId: 10659522720223201820
    SubobjectId: 11253241890116631003
    InstanceId: 9939008726453563535
    TemplateId: 12469408909370766820
  }
}
Objects {
  Id: 8693547413848438571
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 10659522720223201820
  ChildIds: 13025979725578640292
  UnregisteredParameters {
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:text"
      String: "We\'ll start from the beginning."
    }
    Overrides {
      Name: "cs:call_event"
      String: "loop_back"
    }
    Overrides {
      Name: "cs:animation_stance_loop"
      Bool: false
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
      Id: 11968027505806163616
    }
  }
  InstanceHistory {
    SelfId: 10659522720223201820
    SubobjectId: 11253241890116631003
    InstanceId: 9939008726453563535
    TemplateId: 12469408909370766820
  }
}
Objects {
  Id: 13025979725578640292
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 8693547413848438571
  ChildIds: 469522925722792688
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "Pawns are fickle beasts, they are.  There are 3 basic pawn moves you should know."
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_pawn_move_1"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 469522925722792688
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 13025979725578640292
  ChildIds: 4231634954256749962
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "First of all, pawns generally only move one space forward.  If there is a piece in front of them, they are stopped dead in their tracks."
    }
    Overrides {
      Name: "cs:id"
      Int: 2
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_pawn_move_1"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 4231634954256749962
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 469522925722792688
  ChildIds: 6816174849390461989
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "Now, on its very first move, a pawn can go TWO squares.  Use this to get an early pawn center!"
    }
    Overrides {
      Name: "cs:id"
      Int: 3
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_pawn_move_2"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 6816174849390461989
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 4231634954256749962
  ChildIds: 17336765582968298889
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "Pawns are the only pieces that capture differently from how they move.  They must capture diagonally."
    }
    Overrides {
      Name: "cs:id"
      Int: 4
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_pawn_move_3"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 17336765582968298889
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 6816174849390461989
  ChildIds: 9698219199817413788
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "Ah, the mighty castle.  Many consider it second in power only to the Queen, when attacking."
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_rook_move"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 9698219199817413788
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 17336765582968298889
  ChildIds: 1761218294874372844
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "Rooks can go horizontally or vertically until they run into an opposing piece, which they can capture."
    }
    Overrides {
      Name: "cs:id"
      Int: 2
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 1761218294874372844
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 9698219199817413788
  ChildIds: 7645543057783205536
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "The Knight is fascinating in that it can jump over pieces.  It moves in an \"L\" shape.  This makes it tricky to use and defend against."
    }
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_knight_move"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 7645543057783205536
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 1761218294874372844
  ChildIds: 3966778477293654099
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "The Bishop serves as a loyal subject to the King, holding one color at bay against the enemy forces."
    }
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_bishop_move"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 3966778477293654099
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 7645543057783205536
  ChildIds: 3080223219453388367
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "Bishops can only move and capture diagonally.  Their range makes them deadly in endgames."
    }
    Overrides {
      Name: "cs:id"
      Int: 2
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 3080223219453388367
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 3966778477293654099
  ChildIds: 9643466707676712300
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "Her majesty brings an air of superiority to the board - beware!"
    }
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_queen_move"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 9643466707676712300
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 3080223219453388367
  ChildIds: 2447830979324047814
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "The Queen can move horizontally, vertically, or diagonally.  She combines the powers of the Bishop and the Rook into one!"
    }
    Overrides {
      Name: "cs:id"
      Int: 2
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 2447830979324047814
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 9643466707676712300
  ChildIds: 14557812453884905388
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "The King is the leader of your forces.  You must defend him at all costs."
    }
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_king_move"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 14557812453884905388
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 2447830979324047814
  ChildIds: 17769603627299658099
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "The King may move one square and capture in any direction, provided he is not threatened."
    }
    Overrides {
      Name: "cs:id"
      Int: 2
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 17769603627299658099
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 14557812453884905388
  ChildIds: 11997513264836738636
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "If the King is attacked, you must either move it or block the attacking piece from taking it."
    }
    Overrides {
      Name: "cs:id"
      Int: 3
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 11997513264836738636
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 17769603627299658099
  ChildIds: 3203029223695769991
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "There are two very special moves that you should keep in your arsenal."
    }
    Overrides {
      Name: "cs:id"
      Int: 1
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 3203029223695769991
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 11997513264836738636
  ChildIds: 12809530217795790665
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "The one that most people have heard of is \"Castles\".  If the rook and the king have not moved (and there\'s nothing in between), they can interchange!"
    }
    Overrides {
      Name: "cs:id"
      Int: 2
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_special_1"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 12809530217795790665
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 3203029223695769991
  ChildIds: 8183145767833152027
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "See here, the king always moves two squares over, and the rook goes to the other side.  This can be done either way."
    }
    Overrides {
      Name: "cs:id"
      Int: 3
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 8183145767833152027
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 12809530217795790665
  ChildIds: 13468162356589848720
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "Most people are less familiar with \"En Passant\", which is French for \"in passing\"."
    }
    Overrides {
      Name: "cs:id"
      Int: 4
    }
    Overrides {
      Name: "cs:call_event"
      String: "show_special_2"
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 13468162356589848720
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 8183145767833152027
  ChildIds: 9693308675330312894
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "The best way to describe it is when a pawn moves two squares forward, an adjacent pawn can capture it for only ONE turn as if it only moved one space."
    }
    Overrides {
      Name: "cs:id"
      Int: 5
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
      Id: 11968027505806163616
    }
  }
}
Objects {
  Id: 9693308675330312894
  Name: "Dialogue_Conversation_Entry"
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
  ParentId: 13468162356589848720
  UnregisteredParameters {
    Overrides {
      Name: "cs:text"
      String: "You\'ve got all the basics now. Go out there and win some games!"
    }
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:call_event"
      String: "tutorial_ended"
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
      Id: 11968027505806163616
    }
  }
}
