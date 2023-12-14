import SwiftUI

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public extension View {
    func numericTransition() -> some View {
        self
            .contentTransition(.numericText())
    }
}
