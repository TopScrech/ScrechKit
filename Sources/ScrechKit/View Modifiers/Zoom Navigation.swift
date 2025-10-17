#if !os(macOS)
import SwiftUI

@available(iOS 17, tvOS 17, watchOS 10, *)
public extension View {
    @ViewBuilder
    func navigationZoomTransition(_ sourceID: String, in namespace: Namespace.ID) -> some View {
        if #available(iOS 18, tvOS 18, watchOS 11, visionOS 2, *) {
            self
                .navigationTransition(.zoom(sourceID: sourceID, in: namespace))
        } else {
            self
        }
    }
    
    @ViewBuilder
    func matchedTransitionSource(_ id: String, in namespace: Namespace.ID) -> some View {
        if #available(iOS 18, tvOS 18, watchOS 11, visionOS 2, *) {
            self
                .matchedTransitionSource(id: id, in: namespace)
        } else {
            self
        }
    }
}
#endif
