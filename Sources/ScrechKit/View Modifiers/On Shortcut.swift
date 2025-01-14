#if !os(tvOS)
import SwiftUI

@available(iOS 14, macOS 11, watchOS 7, *)
public struct OnShortcutModifier: ViewModifier {
    private let key: Int
    private let action: () -> Void
    
    public init(_ key: Int, action: @escaping () -> Void) {
        self.key = key
        self.action = action
    }
    
    public func body(content: Content) -> some View {
        content
            .onShortcut(.init(Character(key.description))) {
                action()
            }
    }
}

@available(iOS 14, macOS 11, watchOS 7, *)
public extension View {
    func onShortcut(_ key: Int, action: @escaping () -> Void) -> some View {
        modifier(OnShortcutModifier(key, action: action))
    }
}
#endif
