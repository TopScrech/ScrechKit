import Foundation

public func delay (
    _ seconds: Double = 1,
    execute: @escaping () -> Void
) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: execute)
}

public func main(_ execute: @escaping () -> Void) {
    DispatchQueue.main.async {
        execute()
    }
}
