import SwiftUI

#if os(macOS) || os(iOS) && !os(visionOS)
@available(iOS 17, macOS 14, *)
public extension View {
    func inspector<Content> (
        _ isPresented: Binding<Bool> = .constant(true),
        @ViewBuilder content: @escaping () -> Content
    ) -> some View where Content: View {
        self.inspector(isPresented: isPresented, content: content)
    }
}
#endif
