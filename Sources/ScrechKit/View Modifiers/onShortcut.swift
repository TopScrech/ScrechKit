#if !os(tvOS) && !os(watchOS)

import SwiftUI

@available(iOS 14, macOS 11, *)
public extension View {
    func onShortcut(
        _ key: KeyEquivalent,
        modifiers: EventModifiers = .command,
        perform: @escaping () -> Void
    ) -> some View {
        ZStack {
            Button("") {
                perform()
            }
            .opacity(0)
            .keyboardShortcut(key, modifiers: modifiers)
            
            self
        }
    }
    
    func onShortcut(
        _ key: Int,
        modifiers: EventModifiers = .command,
        perform: @escaping () -> Void
    ) -> some View {
        ZStack {
            Button("") {
                perform()
            }
            .opacity(0)
            .keyboardShortcut(KeyEquivalent(Character(key.description)), modifiers: modifiers)
            
            self
        }
    }
}

#endif
