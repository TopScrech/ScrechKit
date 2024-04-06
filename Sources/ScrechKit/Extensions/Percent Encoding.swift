import Foundation

@available(iOS 8, macOS 10.10, tvOS 9, watchOS 2, *)
public extension String {
    func applyPercentEncoding() -> String {
        self.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    }
}
