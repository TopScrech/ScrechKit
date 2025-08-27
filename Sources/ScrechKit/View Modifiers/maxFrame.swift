import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func maxFrame(_ frame: CGFloat) -> some View {
        self.frame(maxWidth: frame, maxHeight: frame)
    }
}
