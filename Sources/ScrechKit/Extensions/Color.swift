import SwiftUI

#if canImport(UIKit)
typealias PlatformColor = UIColor
#elseif canImport(AppKit)
typealias PlatformColor = NSColor
#endif

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension Color {
    init(_ hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

// @AppStorage support
@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
extension Color: RawRepresentable {
    public init?(rawValue: String) {
        guard let data = Data(base64Encoded: rawValue) else {
            self = .black
            return
        }
        
        do {
            let color = try NSKeyedUnarchiver.unarchivedObject(ofClass: PlatformColor.self, from: data) ?? .black
            self = Color(color)
        } catch {
            self = .black
        }
    }
    
    public var rawValue: String {
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: PlatformColor(self), requiringSecureCoding: false)
            return data.base64EncodedString()
        } catch {
            return ""
        }
    }
}
