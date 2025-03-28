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

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func popover<Content> (
        _ isPresented: Binding<Bool> = .constant(true),
        @ViewBuilder content: @escaping () -> Content
    ) -> some View where Content: View {
        self.sheet(isPresented: isPresented, content: content)
    }
}

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
