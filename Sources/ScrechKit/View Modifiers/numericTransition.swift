import SwiftUI

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public extension View {
    func numericTransition() -> some View {
        self.contentTransition(.numericText())
    }
    
    @available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
    func numericTransition(_ value: Int) -> some View {
        self.contentTransition(.numericText(value: Double(value)))
    }
}
