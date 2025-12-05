import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    nonisolated func frame(_ frame: CGFloat) -> some View {
        self.frame(width: frame, height: frame)
    }
}
