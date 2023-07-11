import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public struct Capsule: View {
    let color: Color
    
    public init(_ color: Color) {
        self.color = color
    }
    
    public var body: some View {
        SwiftUI.Capsule().fill(color)
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public struct Circle: View {
    let color: Color
    
    public init(_ color: Color) {
        self.color = color
    }
    
    public var body: some View {
        SwiftUI.Circle().fill(color)
    }
}
