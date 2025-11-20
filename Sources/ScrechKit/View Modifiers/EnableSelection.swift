import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    @ViewBuilder
    func enableSelection() -> some View {
        if #available(iOS 15, watchOS 7, macOS 12, tvOS 14, *) {
            self
#if !os(watchOS) && !os(tvOS)
                .textSelection(.enabled)
#endif
        } else {
            self
        }
    }
}
