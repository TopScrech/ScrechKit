#if !os(tvOS)

@available(iOS 10, macOS 10.14, watchOS 3, *)
public extension UNNotificationSound {
    static func ringtone(_ name: String) -> UNNotificationSound {
        .ringtoneSoundNamed(.init(name))
    }
    
    static func critical(_ name: String) -> UNNotificationSound {
        .criticalSoundNamed(.init(name))
    }
    
    static func critical(_ name: String, volume: Float) -> UNNotificationSound {
        .criticalSoundNamed(.init(name), withAudioVolume: volume)
    }
}

#endif
