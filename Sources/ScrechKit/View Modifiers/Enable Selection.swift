import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
struct EnableSelection: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 15, watchOS 7, macOS 12, tvOS 14, *) {
            content
#if !os(watchOS) && !os(tvOS)
                .textSelection(.enabled)
#endif
        } else {
            content
        }
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func enableSelection() -> some View {
        modifier(EnableSelection())
    }
}
