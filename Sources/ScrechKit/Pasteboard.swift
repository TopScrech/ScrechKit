import Foundation

final class Pasteboard {
    public static func copy(_ string: String) {
#if os(macOS)
        NSPasteboard.general.setString(string, forType: .string)
#else
        UIPasteboard.general.string = string
#endif
    }
}
