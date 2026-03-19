@available(iOS 15, macOS 12, tvOS 15, watchOS 10, *)
extension View {
    @ViewBuilder
    func glassyBackground(_ rectRounding: CGFloat? = nil) -> some View {
#if os(visionOS)
        if let rectRounding {
            self
                .background(.ultraThinMaterial, in: .rect(cornerRadius: rectRounding))
        } else {
            self
                .background(.ultraThinMaterial)
        }
#else
        if #available(iOS 26, macOS 26, tvOS 26, watchOS 26, *) {
            if let rectRounding {
                self
                    .glassEffect(in: .rect(cornerRadius: rectRounding))
            } else {
                self
                    .glassEffect()
            }
        } else {
            if let rectRounding {
                self
                    .background(.ultraThinMaterial, in: .rect(cornerRadius: rectRounding))
            } else {
                self
                    .background(.ultraThinMaterial)
            }
        }
#endif
    }
}
