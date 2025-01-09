import SwiftUI

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public struct HelpModifier: ViewModifier {
    let url: URL
    
    init(_ url: URL) {
        self.url = url
    }
    
    public func body(content: Content) -> some View {
        content
            .help(url.description)
    }
}

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public extension View {
    func help(_ url: URL) -> some View {
        modifier(HelpModifier(url))
    }
}
