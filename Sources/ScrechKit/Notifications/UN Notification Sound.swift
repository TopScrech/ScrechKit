#if os(iOS) || os(macOS)

import UserNotifications

public extension UNNotificationSound {
    @available(iOS 15.2, *)
    static func ringtone(_ name: String) -> UNNotificationSound {
        .ringtoneSoundNamed(.init(name))
    }
    
    @available(iOS 12, macOS 10.14, *)
    static func critical(_ name: String) -> UNNotificationSound {
        .criticalSoundNamed(.init(name))
    }
    
    @available(iOS 12, macOS 10.14, *)
    static func critical(_ name: String, volume: Float) -> UNNotificationSound {
        .criticalSoundNamed(.init(name), withAudioVolume: volume)
    }
}

#endif
