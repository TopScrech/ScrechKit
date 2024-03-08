import SwiftUI

@available(iOS 15, macOS 12, tvOS 15, watchOS 8, *)
public extension View {
    func refreshableTask <ID> (_ action: @escaping () -> Void) -> some View {
        self
            .task {
                action()
            }
            .refreshable {
                action()
            }
    }
}
