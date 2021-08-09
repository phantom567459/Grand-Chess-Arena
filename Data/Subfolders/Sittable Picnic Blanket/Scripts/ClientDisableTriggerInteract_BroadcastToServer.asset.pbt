Assets {
  Id: 11799210459340557417
  Name: "ClientDisableTriggerInteract_BroadcastToServer"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:RenableTriggerOnEndOverlap"
        Bool: false
      }
      Overrides {
        Name: "cs:ReenableTriggerOnEvent"
        Bool: false
      }
      Overrides {
        Name: "cs:ResetEventName"
        String: "ResetTrigger"
      }
      Overrides {
        Name: "cs:Trigger"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:InteractedEventName"
        String: "TriggerInteracted"
      }
    }
  }
  SerializationVersion: 94
}
