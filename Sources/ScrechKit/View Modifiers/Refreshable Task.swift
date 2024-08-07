import SwiftUI

@available(iOS 15, macOS 12, tvOS 15, watchOS 8, *)
public extension View {
    func refreshableTask(_ action: @escaping () async -> Void) -> some View {
        self
            .task {
                await action()
            }
            .refreshable {
                await action()
            }
    }
}
