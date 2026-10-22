import SwiftUI

@available(iOS 15, macOS 12, tvOS 15, watchOS 10, *)
public extension View {
    @ViewBuilder
    func glassyBackground(
        _ rectRounding: CGFloat? = nil,
        tint: Color? = nil,
        interactive: Bool = false
    ) -> some View {
        if let rectRounding {
            glassyBackground(in: .rect(cornerRadius: rectRounding), tint: tint, interactive: interactive)
        } else {
            glassyBackground(in: .capsule, tint: tint, interactive: interactive)
        }
    }

    /// Uses tinted material on older systems and visionOS, without glass interaction
    @ViewBuilder
    func glassyBackground<S: Shape>(
        in shape: S,
        tint: Color? = nil,
        interactive: Bool = false
    ) -> some View {
#if os(visionOS)
        self
            .background {
                shape
                    .fill(.ultraThinMaterial)
                    .overlay {
                        shape.fill(tint ?? .clear)
                    }
            }
#else
        if #available(iOS 26, macOS 26, tvOS 26, watchOS 26, *) {
            self
                .glassEffect(.regular.tint(tint).interactive(interactive), in: shape)
        } else {
            self
                .background {
                    shape
                        .fill(.ultraThinMaterial)
                        .overlay {
                            shape.fill(tint ?? .clear)
                        }
                }
        }
#endif
    }
}
