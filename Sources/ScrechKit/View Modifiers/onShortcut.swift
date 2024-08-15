import SwiftUI

@available(macOS 11, *)
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
}
