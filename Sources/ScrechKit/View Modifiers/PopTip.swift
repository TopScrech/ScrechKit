import TipKit

@available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
struct PopTip: ViewModifier {
    private let tip: (any Tip)?
    private let action: (Tips.Action) -> Void
    
    init(_ tip: (any Tip)?, action: @escaping (Tips.Action) -> Void) {
        self.tip = tip
        self.action = action
    }
    
    func body(content: Content) -> some View {
        if #available(iOS 18, macOS 15, tvOS 18, visionOS 2, *) {
            content
                .popoverTip(tip, action: action)
        } else {
            content
        }
    }
}

@available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
public extension View {
    func popTip(_ tip: (any Tip)?, action: @escaping (Tips.Action) -> Void) -> some View {
        modifier(PopTip(tip, action: action))
    }
}
