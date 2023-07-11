import SwiftUI

@available(iOS 13, macOS 11, tvOS 13, watchOS 6, *)
public extension View {
    func darkSchemePreferred() -> some View {
        self.preferredColorScheme(.dark)
    }
    
    func lightSchemePreferred() -> some View {
        self.preferredColorScheme(.light)
    }
}
