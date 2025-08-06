import Foundation

public final class Pasteboard {
    static func copy(_ string: String) {
#if os(macOS)
        NSPasteboard.general.setString(string, forType: .string)
#else
        UIPasteboard.general.string = string
#endif
    }
}
