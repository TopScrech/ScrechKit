import SwiftUI

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public extension View {
    func matchedEffect <ID> (_ id: ID, in namespace: Namespace.ID) -> some View where ID: Hashable {
        self.matchedGeometryEffect(
            id: id,
            in: namespace
        )
    }
}
