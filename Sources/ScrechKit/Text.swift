import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension Text {
    init<T: Numeric>(_ value: T) {
        self.init(String(describing: value))
    }
}
