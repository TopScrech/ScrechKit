import Foundation
@_exported import SwiftUI

public protocol ConvertibleToByteCount {
    func toByteCount() -> Int64
}

extension Int: ConvertibleToByteCount {
    public func toByteCount() -> Int64 {
        return Int64(self)
    }
}

extension UInt64: ConvertibleToByteCount {
    public func toByteCount() -> Int64 {
        return Int64(self)
    }
}

extension Double: ConvertibleToByteCount {
    public func toByteCount() -> Int64 {
        return Int64(self)
    }
}

extension Int64: ConvertibleToByteCount {
    public func toByteCount() -> Int64 {
        return self
    }
}

@available(iOS 6, macOS 10.8, tvOS 9, watchOS 2, *)
public func formatBytes<T: ConvertibleToByteCount>(_ bytes: T, countStyle: ByteCountFormatter.CountStyle = .file, withUnitName: Bool = true) -> String {
    if bytes.toByteCount() == 0 {
        return "-"
    }
    
    let byteCount = bytes.toByteCount()
    let byteFormatter = byteFormatter(countStyle, withUnitName: withUnitName)
    return byteFormatter.string(fromByteCount: byteCount)
}

private func byteFormatter(_ countStyle: ByteCountFormatter.CountStyle, withUnitName: Bool) -> ByteCountFormatter {
    struct Static {
        static let byteFormatter: ByteCountFormatter = {
            let formatter = ByteCountFormatter()
            formatter.allowedUnits = [.useBytes, .useKB, .useMB, .useGB]
            return formatter
        }()
    }
    
    Static.byteFormatter.countStyle = countStyle
    Static.byteFormatter.includesUnit = withUnitName
    return Static.byteFormatter
}
