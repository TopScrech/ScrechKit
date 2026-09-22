import SwiftUI

/// A button that performs an async task when tapped
public struct AsyncButton<Label: View>: View {
    private let role: ButtonRole?
    private let action: () async -> Void
    private let label: () -> Label
    
    public init(role: ButtonRole? = nil, action: @escaping () async -> Void, @ViewBuilder label: @escaping () -> Label) {
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
    init(_ titleKey: LocalizedStringKey, role: ButtonRole? = nil, action: @escaping () async -> Void) {
        self.init(role: role, action: action) {
            Text(titleKey)
        }
    }
    
    init<S: StringProtocol>(_ title: S, role: ButtonRole? = nil, action: @escaping () async -> Void) {
        self.init(role: role, action: action) {
            Text(title)
        }
    }
}

public extension AsyncButton where Label == SwiftUI.Label<Text, Image> {
    init(_ titleKey: LocalizedStringKey, systemImage: String, role: ButtonRole? = nil, action: @escaping () async -> Void) {
        self.init(role: role, action: action) {
            SwiftUI.Label(titleKey, systemImage: systemImage)
        }
    }
    
    init<S: StringProtocol>(_ title: S, systemImage: String, role: ButtonRole? = nil, action: @escaping () async -> Void) {
        self.init(role: role, action: action) {
            SwiftUI.Label(title, systemImage: systemImage)
        }
    }
}
