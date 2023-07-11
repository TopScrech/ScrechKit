import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func tightening(_ flag: Bool) -> some View {
        self.allowsTightening(flag)
    }
}
