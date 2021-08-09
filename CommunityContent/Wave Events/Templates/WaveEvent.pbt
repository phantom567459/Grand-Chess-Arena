Assets {
  Id: 3179607278987071824
  Name: "WaveEvent"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13668627952308503754
      Objects {
        Id: 13668627952308503754
        Name: "WaveEvent"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17913654332985699729
        ChildIds: 5464455928778947479
        UnregisteredParameters {
          Overrides {
            Name: "cs:EventQueueSize"
            Int: 90
          }
          Overrides {
            Name: "cs:WarnOnNilObject"
            Bool: true
          }
          Overrides {
            Name: "cs:WarnOnNilPlayer"
            Bool: true
          }
          Overrides {
            Name: "cs:ServerBroadcastName"
            String: "WaveEvent"
          }
          Overrides {
            Name: "cs:EventQueueSize:tooltip"
            String: "How many events to store in the Networked Property String. The smaller this number is, the less intensive the process will be. However, if this number is too small, some events may overwrite each other before they\'ve been processed, if you\'re sending enough of them per second. As a rule of thumb, this number this should be ~2x greater than the highest number of events per second you expect to be sending. Default: 65"
          }
          Overrides {
            Name: "cs:WarnOnNilObject:tooltip"
            String: "If WaveEvent is unable to find a CoreObject sent as an argument to an event, it will send a warning to the console if this is checked."
          }
          Overrides {
            Name: "cs:WarnOnNilPlayer:tooltip"
            String: "If WaveEvent is unable to find a Player sent as an argument to an event, it will send a warning to the console if this is checked."
          }
          Overrides {
            Name: "cs:ServerBroadcastName:tooltip"
            String: "If you want separate Event Queues for different type of events, you can drag multiple WaveEvent objects into your hierarchy. Change this string to something like \"YourEvent\" and then instead of \"WaveEvent\", \"WaveEventToPlayer\", and \"WaveEventToPlayers\" simply broadcast with \"YourEvent\", \"YourEventToPlayer\", \"YourEventToPlayers\", etc."
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
          IsGroup: true
        }
      }
      Objects {
        Id: 17913654332985699729
        Name: "WaveEventReadme"
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
        ParentId: 13668627952308503754
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
            Id: 6216686796115232727
          }
        }
      }
      Objects {
        Id: 5464455928778947479
        Name: "Logic"
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
        ParentId: 13668627952308503754
        ChildIds: 11470859729204078687
        ChildIds: 3531236632756401572
        ChildIds: 8993943034463083387
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
          IsGroup: true
        }
      }
      Objects {
        Id: 11470859729204078687
        Name: "WaveEventServer"
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
        ParentId: 5464455928778947479
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 13668627952308503754
            }
          }
          Overrides {
            Name: "cs:Sphere"
            ObjectReference {
              SubObjectId: 3531236632756401572
            }
          }
        }
        WantsNetworking: true
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
            Id: 12370859644236006233
          }
        }
      }
      Objects {
        Id: 3531236632756401572
        Name: "EventCarrier"
        Transform {
          Location {
            Z: 999999
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5464455928778947479
        ChildIds: 13311314764604063340
        UnregisteredParameters {
          Overrides {
            Name: "cs:Events"
            String: ""
          }
          Overrides {
            Name: "cs:Events:isrep"
            Bool: true
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        PhysicsObject {
          PhysicsShape {
            Value: "mc:ephysicsshape:sphere"
          }
          Settings {
            OverrideMass: true
          }
          Radius: 1
        }
      }
      Objects {
        Id: 13311314764604063340
        Name: "Stationary"
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
        ParentId: 3531236632756401572
        WantsNetworking: true
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
            Id: 11328966945093244791
          }
        }
      }
      Objects {
        Id: 8993943034463083387
        Name: "ClientContext"
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
        ParentId: 5464455928778947479
        ChildIds: 9732844227670173350
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
        Id: 9732844227670173350
        Name: "WaveEventClient"
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
        ParentId: 8993943034463083387
        UnregisteredParameters {
          Overrides {
            Name: "cs:ServerScript"
            ObjectReference {
              SubObjectId: 11470859729204078687
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 13668627952308503754
            }
          }
          Overrides {
            Name: "cs:Sphere"
            ObjectReference {
              SubObjectId: 3531236632756401572
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
            Id: 932304453779967173
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "An easy, drag and drop solution to sending larger events more often with reliable delivery. \r\n\r\nSimply drag the template into your hierarchy, replace any Events.BroadcastToAllPlayers(\"EventName\", ...) with Events.Broadcast(\"WaveEvent\", \"EventName\", ...) and you\'re good to go! Clients connect to Events the same way they normally do, and there\'s plenty of extra functionality!\r\n\r\nPLEASE read the readme - it includes lots of helpful information on how to best use this tool!"
  }
  SerializationVersion: 94
  DirectlyPublished: true
}
