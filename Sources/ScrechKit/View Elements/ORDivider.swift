import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public struct ORDivider: View {
    public init() {}
    
    public var body: some View {
        HStack {
            VStack {
                Divider()
            }
            
            Text("or")
                .secondary()
            
            VStack {
                Divider()
            }
        }
        .padding(8)
    }
}
