import SwiftUI

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
struct NumericTransitionModifier: ViewModifier {
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    
    func body(content: Content) -> some View {
        if reduceMotion {
            content
        } else {
            content
                .contentTransition(.numericText())
        }
    }
}

@available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
struct NumericTransitionValueModifier: ViewModifier {
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    
    let value: Double
    
    func body(content: Content) -> some View {
        if reduceMotion {
            content
        } else {
            content
                .contentTransition(.numericText(value: value))
        }
    }
}

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public extension View {
    func numericTransition() -> some View {
        modifier(NumericTransitionModifier())
    }
    
    @available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
    func numericTransition<N: BinaryInteger>(_ value: N) -> some View {
        modifier(NumericTransitionValueModifier(value: Double(value)))
    }
    
    @available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
    func numericTransition<N: BinaryFloatingPoint>(_ value: N) -> some View {
        modifier(NumericTransitionValueModifier(value: Double(value)))
    }
}
