import SwiftUI

#if !os(macOS)
@available(iOS 14, tvOS 14, watchOS 7, *)
public extension View {
    func fullScreenCover<Content> (
        _ isPresented: Binding<Bool> = .constant(true),
        @ViewBuilder content: @escaping () -> Content
    ) -> some View where Content: View {
        self.fullScreenCover(isPresented: isPresented, content: content)
    }
}
#endif
