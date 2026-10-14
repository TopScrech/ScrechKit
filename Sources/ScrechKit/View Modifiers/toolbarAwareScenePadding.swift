import SwiftUI

#if os(iOS)
@available(iOS 27.1, *)
struct ToolbarAwareScenePaddingModifier: ViewModifier {
    @Environment(\.toolbarVerticalEdge) private var verticalEdge
    
    func body(content: Content) -> some View {
        content
            .scenePadding(verticalEdge == .trailing ? .leading : .horizontal)
    }
}
#endif

public extension View {
    @ViewBuilder
    func toolbarAwareScenePadding() -> some View {
#if os(iOS)
        if #available(iOS 27.1, *) {
            modifier(ToolbarAwareScenePaddingModifier())
        } else {
            scenePadding(.horizontal)
        }
#else
        scenePadding(.horizontal)
#endif
    }
}
