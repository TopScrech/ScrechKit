import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    @ViewBuilder
    func hideScrollEdgeEffect(for edges: Edge.Set = .all) -> some View {
#if os(visionOS)
        self
#else
        if #available(iOS 26, macOS 26, tvOS 26, watchOS 26, *) {
            self
                .scrollEdgeEffectHidden(for: edges)
        } else {
            self
        }
#endif
    }
}
