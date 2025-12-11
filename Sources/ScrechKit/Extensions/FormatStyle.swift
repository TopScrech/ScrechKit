@available(iOS 15, macOS 12, tvOS 15, watchOS 8, *)
public extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Percent {
    static var percentRounded: Self {
        .percent.precision(.fractionLength(0))
    }
    
    static func percentRounded(_ fractionLength: Int) -> Self {
        .percent.precision(.fractionLength(fractionLength))
    }
}

@available(iOS 15, macOS 12, tvOS 15, watchOS 8, *)
public extension FormatStyle where Self == FloatingPointFormatStyle<Double> {
    static func fractionDigits(_ digits: Int) -> Self {
        .number.precision(.fractionLength(digits))
    }
    
    static func fractionDigits(_ range: ClosedRange<Int>) -> Self {
        .number.precision(.fractionLength(range))
    }
}
