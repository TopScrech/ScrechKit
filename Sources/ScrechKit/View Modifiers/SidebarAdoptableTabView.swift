#if !os(watchOS)

import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, *)
public struct SidebarAdoptableTabView: ViewModifier {
    public func body(content: Content) -> some View {
        if #available(iOS 18, macOS 15, tvOS 18, visionOS 2, *) {
            content
                .tabViewStyle(.sidebarAdaptable)
        } else {
            content
        }
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, *)
public extension View {
    func sidebarAdaptableTabView() -> some View {
        modifier(SidebarAdoptableTabView())
    }
}

#endif
