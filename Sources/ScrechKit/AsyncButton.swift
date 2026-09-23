import SwiftUI

/// A button that performs a synchronous or asynchronous action in a main-actor task when tapped
public struct AsyncButton<Label: View>: View {
    private let role: ButtonRole?
    private let action: @MainActor () async -> Void
    private let label: () -> Label
    
    public init(role: ButtonRole? = nil, action: @escaping @MainActor () async -> Void, @ViewBuilder label: @escaping () -> Label) {
        self.role = role
        self.action = action
        self.label = label
    }
    
    public var body: some View {
        Button(role: role) {
            Task {
                await action()
            }
        } label: {
            label()
        }
    }
}

public extension AsyncButton where Label == Text {
    init(_ titleKey: LocalizedStringKey, role: ButtonRole? = nil, action: @escaping @MainActor () async -> Void) {
        self.init(role: role, action: action) {
            Text(titleKey)
        }
    }
    
    init<S: StringProtocol>(_ title: S, role: ButtonRole? = nil, action: @escaping @MainActor () async -> Void) {
        self.init(role: role, action: action) {
            Text(title)
        }
    }
}

public extension AsyncButton where Label == SwiftUI.Label<Text, Image> {
    init(_ titleKey: LocalizedStringKey, systemImage: String, role: ButtonRole? = nil, action: @escaping @MainActor () async -> Void) {
        self.init(role: role, action: action) {
            SwiftUI.Label(titleKey, systemImage: systemImage)
        }
    }
    
    init<S: StringProtocol>(_ title: S, systemImage: String, role: ButtonRole? = nil, action: @escaping @MainActor () async -> Void) {
        self.init(role: role, action: action) {
            SwiftUI.Label(title, systemImage: systemImage)
        }
    }
}

fileprivate func regularFunc() async {}
fileprivate func asyncFunc() async {}

#Preview {
    AsyncButton("Preview", action: regularFunc)
    AsyncButton("Preview", action: asyncFunc)
    
    AsyncButton("Preview") {}
    AsyncButton("Preview", systemImage: "hammer") {}
    AsyncButton("Preview", systemImage: "hammer", role: .destructive) {}
    
    AsyncButton(action: {}) {
        Text("Preview")
    }
    
    AsyncButton("Preview", systemImage: "hammer") {}
        .labelStyle(.iconOnly)
    
    AsyncButton("Preview", systemImage: "hammer") {}
        .labelStyle(.titleOnly)
}
