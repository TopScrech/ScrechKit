import SwiftUI

@available(iOS 13, macOS 11, tvOS 13, watchOS 6, *)
public struct SFButton: View {
    private let icon: String
    private let action: () -> Void
    
    public init(_ icon: String = "", action: @escaping () -> Void = {}) {
        self.icon = icon
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            Image(systemName: icon)
        }
    }
}
