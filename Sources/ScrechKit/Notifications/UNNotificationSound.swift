#if os(macOS)
import UserNotifications

#if os(iOS)

@available(iOS 15.2, *)
public extension UNNotificationSound {
    static func ringtone(_ name: String) -> UNNotificationSound {
        .ringtoneSoundNamed(.init(name))
    }
}

#endif
    
@available(iOS 12, macOS 10.14, *)
public extension UNNotificationSound {
    static func critical(_ name: String) -> UNNotificationSound {
        .criticalSoundNamed(.init(name))
    }
    
    static func critical(_ name: String, volume: Float) -> UNNotificationSound {
        .criticalSoundNamed(.init(name), withAudioVolume: volume)
    }
}
#endif
