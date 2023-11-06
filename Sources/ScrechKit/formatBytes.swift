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
    
    let formattedString = formatter.string(fromByteCount: byteCount)
    var split = formattedString.split(separator: " ", maxSplits: 1, omittingEmptySubsequences: true)

    if let firstComponent = split.first, let number = Double(firstComponent.replacingOccurrences(of: ",", with: ".")) {
        let integerPart = Double(number).roundedToSingleDecimalOrInt()
        
        split[0] = Substring(String(integerPart))
    }

    let finalString = split.joined(separator: " ")
    
    return finalString
}

extension Double {
    func roundedToSingleDecimalOrInt() -> Double {
        let roundedValue = (self * 10).rounded() / 10
        return (roundedValue.truncatingRemainder(dividingBy: 1) == 0) ? Double(Int(self)) : roundedValue
    }
}
