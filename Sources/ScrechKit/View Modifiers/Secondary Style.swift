import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    @ViewBuilder
    func secondary() -> some View {
        if #available(iOS 15, watchOS 8, macOS 12, tvOS 15, *) {
            self
                .foregroundStyle(.secondary)
        } else {
            self
                .foregroundColor(.secondary)
        }
    }
}
