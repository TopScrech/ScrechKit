import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func sheet<Content> (
        _ isPresented: Binding<Bool> = .constant(true),
        @ViewBuilder content: @escaping () -> Content
    ) -> some View where Content: View {
        self.sheet(isPresented: isPresented, content: content)
    }
}
