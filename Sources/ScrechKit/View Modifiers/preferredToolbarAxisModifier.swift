import SwiftUI

@available(iOS 17.5, macOS 14.5, tvOS 17.5, visionOS 1, watchOS 10.5, *)
public extension ToolbarContent {
    /// Applies the preferred axis when supported, leaving toolbar content unchanged otherwise
    @ToolbarContentBuilder
    func preferredToolbarAxis(_ axis: PreferredToolbarAxis) -> some ToolbarContent {
        if #available(iOS 27.1, macOS 27.1, tvOS 27.1, visionOS 27.1, watchOS 27.1, *),
           let behavior = axis.axisBehavior {
            axisBehavior(behavior)
        } else {
            self
        }
    }
}

@available(iOS 17.5, macOS 14.5, tvOS 17.5, visionOS 1, watchOS 10.5, *)
public extension CustomizableToolbarContent {
    /// Applies the preferred axis when supported, preserving toolbar customization
    @ToolbarContentBuilder
    func preferredToolbarAxis(_ axis: PreferredToolbarAxis) -> some CustomizableToolbarContent {
        if #available(iOS 27.1, macOS 27.1, tvOS 27.1, visionOS 27.1, watchOS 27.1, *),
           let behavior = axis.axisBehavior {
            axisBehavior(behavior)
        } else {
            self
        }
    }
}
