import Foundation
@_exported import SwiftUI

public protocol ConvertibleToByteCount {
    func toByteCount() -> Int64
}

extension Int: ConvertibleToByteCount {
    public func toByteCount() -> Int64 {
        Int64(self)
    }
}

extension UInt64: ConvertibleToByteCount {
    public func toByteCount() -> Int64 {
        Int64(self)
    }
}

extension Double: ConvertibleToByteCount {
    public func toByteCount() -> Int64 {
        Int64(self)
    }
}

extension Int64: ConvertibleToByteCount {
    public func toByteCount() -> Int64 {
        self
    }
}

@available(iOS 6, macOS 10.8, tvOS 9, watchOS 2, *)
public func formatBytes <T: ConvertibleToByteCount>(
    _ bytes: T,
    countStyle: ByteCountFormatter.CountStyle = .file,
    withUnitName: Bool = true
) -> String {
    let byteCount = bytes.toByteCount()
    guard byteCount != 0 else { return "-" }
    
    let formatter = ByteCountFormatter()
    formatter.allowedUnits = .useAll
    formatter.countStyle = countStyle
    formatter.includesUnit = withUnitName
    formatter.isAdaptive = false
    formatter.zeroPadsFractionDigits = true
    
    return formatter.string(fromByteCount: byteCount)
}
