import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
struct PrimaryStyle: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 15, watchOS 8, macOS 12, tvOS 15, *) {
            content
                .foregroundStyle(.primary)
        } else {
            content
                .foregroundColor(.primary)
        }
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func primary() -> some View {
        modifier(PrimaryStyle())
    }
}
