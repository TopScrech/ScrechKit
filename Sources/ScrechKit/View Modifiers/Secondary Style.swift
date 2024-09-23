import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
struct SecondaryStyle: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 15, watchOS 8, macOS 12, tvOS 15, *) {
            content
                .foregroundStyle(.secondary)
        } else {
            content
                .foregroundColor(.secondary)
        }
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func secondary() -> some View {
        modifier(SecondaryStyle())
    }
}
