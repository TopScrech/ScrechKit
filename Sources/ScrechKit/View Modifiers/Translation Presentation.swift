#if os(iOS) || os(macOS)
import SwiftUI
import Translation

@available(iOS 13, macOS 10.15, *)
public struct TranslationPresentation: ViewModifier {
    @Binding private var isPresented: Bool
    private let text: String
    
    public init(_ isPresented: Binding<Bool>, text: String) {
        _isPresented = isPresented
        self.text = text
    }
    
    public func body(content: Content) -> some View {
        if #available(iOS 17.4, macOS 14.4, *) {
            content
                .translationPresentation(isPresented: $isPresented, text: text)
        } else {
            content
        }
    }
}

@available(iOS 13, macOS 10.15, *)
public extension View {
    func translationPresentation(_ isPresented: Binding<Bool>, text: String) -> some View {
        modifier(TranslationPresentation(isPresented, text: text))
    }
}
#endif
