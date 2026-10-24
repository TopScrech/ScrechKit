import SwiftUI

public enum PreferredToolbarAxis: Hashable, Sendable {
    case automatic, horizontalOnly, verticalPreferred

    @available(iOS 27.1, macOS 27.1, tvOS 27.1, visionOS 27.1, watchOS 27.1, *)
    var axisBehavior: ToolbarItemAxisBehavior? {
        switch self {
        case .automatic:
            .automatic
#if os(iOS)
        case .horizontalOnly:
            .horizontalOnly
        case .verticalPreferred:
            .verticalPreferred
#else
        case .horizontalOnly, .verticalPreferred:
            nil
#endif
        }
    }
}
