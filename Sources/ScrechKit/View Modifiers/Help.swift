import SwiftUI

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public extension View {
    func help(_ url: URL) -> some View {
        self
            .help(url.description)
    }
}
