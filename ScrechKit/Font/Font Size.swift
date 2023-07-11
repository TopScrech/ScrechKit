import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func fontSize(_ fontSize: CGFloat) -> some View {
        self.font(.system(size: fontSize))
    }
}
