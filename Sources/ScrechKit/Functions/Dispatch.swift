import Foundation

@available(iOS 8, macOS 10.10, tvOS 9, watchOS 2, *)
public func delay(
    _ seconds: Double = 1,
    execute: @Sendable @escaping () -> Void
) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: execute)
}

@available(iOS 8, macOS 10.10, tvOS 9, watchOS 2, *)
@MainActor
public func main(_ execute: @escaping () -> Void) {
    DispatchQueue.main.async {
        execute()
    }
}
