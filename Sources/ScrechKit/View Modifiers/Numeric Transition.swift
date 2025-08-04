import SwiftUI

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public extension View {
    func numericTransition() -> some View {
        self.contentTransition(.numericText())
    }
    
    @available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
    func numericTransition<Number: Numeric>(_ value: Number) -> some View {
        if let number = value as? NSNumber {
            self.contentTransition(.numericText(value: number.doubleValue)) as? Self
        } else {
            self
        }
    }
}
