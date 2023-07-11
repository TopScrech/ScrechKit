import SwiftUI

@available(iOS 16.1, macOS 13.1, tvOS 16.1, watchOS 9.1, *)
public extension View {
    func serif() -> some View {
        self.fontDesign(.serif)
    }
    
    func rounded() -> some View {
        self.fontDesign(.rounded)
    }
}
