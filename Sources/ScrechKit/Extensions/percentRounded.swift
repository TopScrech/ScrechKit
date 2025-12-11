@available(iOS 15, macOS 12, tvOS 15, watchOS 8, *)
public extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Percent {
    static var percentRounded: Self {
        .percent.precision(.fractionLength(0))
    }
}
