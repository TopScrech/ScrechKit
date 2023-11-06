import XCTest
@testable import ScrechKit

class ScrechKitTests: XCTestCase {
    func testPerformanceExample() throws {
        print(formatBytes(1234124124124.12141231233))
        print(formatBytes(1234124124124.01))
        print(formatBytes(1234124124124.000))
        print(formatBytes(1234124124124.0123))
        print(formatBytes(1234124124124.1))
    }
}
