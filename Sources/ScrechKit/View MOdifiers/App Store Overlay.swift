#if os(iOS) || os(visionOS)

import SwiftUI
import StoreKit

@available(iOS 14, *)
public extension View {
    func appStoreOverlay <T: CustomStringConvertible> (
        _ isPresented: Binding<Bool>,
        id: T,
        position: SKOverlay.Position = .bottom
    ) -> some View {
        self.appStoreOverlay(isPresented: isPresented) {
            SKOverlay.AppConfiguration(
                appIdentifier: id.description,
                position: position
            )
        }
    }
}

#endif
