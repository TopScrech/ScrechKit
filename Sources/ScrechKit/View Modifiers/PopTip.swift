import TipKit

@available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
public extension View {
    @ViewBuilder
    func popTip(
        _ tip: (any Tip)?,
        action: @Sendable @escaping (Tips.Action) -> Void
    ) -> some View {
        if #available(iOS 18, macOS 15, tvOS 18, visionOS 2, *) {
            self
#if !os(watchOS)
                .popoverTip(tip, action: action)
#endif
        } else {
            self
        }
    }
}
