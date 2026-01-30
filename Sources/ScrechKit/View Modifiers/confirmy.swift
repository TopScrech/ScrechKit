@available(iOS 15, macOS 12, tvOS 15, watchOS 8, *)
public extension ButtonRole {
    static var confirmy: ButtonRole? {
        if #available(iOS 26, macOS 26, tvOS 26, watchOS 10, visionOS 26, *) {
            .confirm
        } else {
            nil
        }
    }
}
