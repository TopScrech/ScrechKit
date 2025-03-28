import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func onFirstAppear(_ action: @escaping () -> ()) -> some View {
        modifier(FirstAppear(action))
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
private struct FirstAppear: ViewModifier {
    private let action: () -> ()
    
    init(_ action: @escaping () -> Void) {
        self.action = action
    }
    
    @State private var hasAppeared = false
    
    func body(content: Content) -> some View {
        content.onAppear {
            guard !hasAppeared else {
                return
            }
            
            hasAppeared = true
            action()
        }
    }
}
