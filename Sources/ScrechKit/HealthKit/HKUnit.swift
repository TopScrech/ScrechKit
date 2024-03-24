import HealthKit

@available(iOS 8, macOS 13, watchOS 2, *)
public extension HKUnit {
    class func kilogram() -> HKUnit {
        .gramUnit(with: .kilo)
    }
}
