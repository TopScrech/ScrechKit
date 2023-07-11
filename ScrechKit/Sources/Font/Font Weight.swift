import SwiftUI

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public extension View {
    func unbold() -> some View {
        self.bold(false)
    }
    
    func semibold() -> some View {
        self.fontWeight(.semibold)
    }
}
