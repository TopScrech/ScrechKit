import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
struct FrameModifier: ViewModifier {
    private let frame: CGFloat
    
    init(_ frame: CGFloat) {
        self.frame = frame
    }
    
    func body(content: Content) -> some View {
        content
            .frame(width: frame, height: frame)
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func frame(_ frame: CGFloat) -> some View {
        modifier(FrameModifier(frame))
    }
}
