#if !os(watchOS) && !os(tvOS)
import Foundation

public final class Pasteboard {
    public static func copy(_ string: String) {
#if os(macOS)
        NSPasteboard.general.setString(string, forType: .string)
#else
        UIPasteboard.general.string = string
#endif
    }
    
    public static func copy(_ url: URL?) {
#if os(macOS)
        if let url {
            NSPasteboard.general.writeObjects([url as NSURL])
        }
#else
        UIPasteboard.general.url = url
#endif
    }
}
#endif
