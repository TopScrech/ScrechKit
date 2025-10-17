#if !os(watchOS)
import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, *)
public extension View {
    @ViewBuilder
    func sidebarAdaptableTabView() -> some View {
        if #available(iOS 18, macOS 15, tvOS 18, visionOS 2, *) {
            self
                .tabViewStyle(.sidebarAdaptable)
        } else {
            self
        }
    }
}
#endif
