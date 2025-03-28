import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    /// Runs the synchronous action the first time the view appears
    func onFirstAppear(_ action: @escaping () -> Void) -> some View {
        modifier(FirstAppear(action))
    }
    
    /// Runs the asynchronous action the first time the view appears
    func onFirstAppear(_ action: @escaping () async -> Void) -> some View {
        modifier(FirstAppearAsync(action))
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
private struct FirstAppear: ViewModifier {
    private let action: () -> Void
    
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

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
private struct FirstAppearAsync: ViewModifier {
    private let action: () async -> Void
    
    init(_ action: @escaping () async -> Void) {
        self.action = action
    }
    
    @State private var hasAppeared = false
    
    func body(content: Content) -> some View {
        content.onAppear {
            guard !hasAppeared else {
                return
            }
            
            hasAppeared = true
            
            Task {
                await action()
            }
        }
    }
}
