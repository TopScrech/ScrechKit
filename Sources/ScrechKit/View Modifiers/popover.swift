#if !os(watchOS) && !os(tvOS)
import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, *)
public extension View {
    func popover<Content> (
        _ isPresented: Binding<Bool> = .constant(true),
        @ViewBuilder content: @escaping () -> Content
    ) -> some View where Content: View {
        self.popover(isPresented: isPresented, content: content)
    }
}
#endif
