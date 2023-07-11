import SwiftUI

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public extension View {
    func redacted(_ isRedacted: Bool) -> some View {
        self.redacted(reason: isRedacted ? .placeholder : [])
    }
}
