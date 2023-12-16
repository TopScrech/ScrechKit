import Foundation

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func rotate(_ degrees: Double) -> some View {
        self.rotationEffect(.degrees(degrees))
    }
}
