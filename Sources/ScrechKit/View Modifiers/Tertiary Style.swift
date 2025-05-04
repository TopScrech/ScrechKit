import SwiftUI

@available(iOS 15, watchOS 8, macOS 12, tvOS 15, *)
struct TertiaryStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.tertiary)
    }
}

@available(iOS 15, watchOS 8, macOS 12, tvOS 15, *)
public extension View {
    func tertiary() -> some View {
        modifier(TertiaryStyle())
    }
}
