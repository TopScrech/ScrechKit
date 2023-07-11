import SwiftUI

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public struct MenuButton: View {
    private let name: LocalizedStringResource
    private let role: ButtonRole
    private let icon: String
    private let action: () -> Void
    
    public init (
        _ name: LocalizedStringResource,
        role: ButtonRole = .cancel,
        icon: String,
        action: @escaping () -> Void
    ) {
        self.name = name
        self.role = role
        self.icon = icon
        self.action = action
    }
    
    public var body: some View {
        Button(role: role) {
            action()
        } label: {
            Label("\(name)", systemImage: icon)
        }
    }
}
