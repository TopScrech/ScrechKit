import SwiftUI

@available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
struct HapticOnModifier<Trigger: Equatable>: ViewModifier {
    let trigger: Trigger
    let sensoryFeedback: SensoryFeedback
    let disabled: Bool
    
    func body(content: Content) -> some View {
        if disabled {
            content
        } else {
            content
                .sensoryFeedback(sensoryFeedback, trigger: trigger)
        }
    }
}

@available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
public extension View {
    func hapticOn<Trigger: Equatable>(_ trigger: Trigger, as sensoryFeedback: SensoryFeedback, disabled: Bool = false) -> some View {
        modifier(HapticOnModifier(trigger: trigger, sensoryFeedback: sensoryFeedback, disabled: disabled))
    }
}
