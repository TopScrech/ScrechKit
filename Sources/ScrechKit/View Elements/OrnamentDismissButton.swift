import SwiftUI

@available(iOS 15, macOS 12, tvOS 15, watchOS 8, *)
struct OrnamentDismissButton: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    
    func body(content: Content) -> some View {
        content
#if os(visionOS)
            .ornament(attachmentAnchor: .scene(.bottom)) {
                Button("Dismiss") {
                    dismiss()
                }
            }
#endif
    }
}

@available(iOS 15, macOS 12, tvOS 15, watchOS 8, *)
extension View {
    func ornamentDismissButton() -> some View {
        modifier(OrnamentDismissButton())
    }
}
