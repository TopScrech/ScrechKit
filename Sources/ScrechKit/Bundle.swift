import Foundation

public extension Bundle {
    static var version: String? {
        self.main.infoDictionary?["CFBundleShortVersionString"] as? String
    }
}
