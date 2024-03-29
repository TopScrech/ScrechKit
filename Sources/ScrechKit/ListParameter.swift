import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public struct ListParameter: View {
    private let name, parameter: String
    
    public init(_ name: String = "", parameter: String = "") {
        self.name = name
        self.parameter = parameter
    }
    
    public var body: some View {
        HStack {
            Text(name)
            
            Spacer()
            
            if #available(iOS 15, watchOS 7, macOS 12, tvOS 14, *) {
                Text(parameter)
                    .foregroundColor(.secondary)
#if !os(watchOS) && !os(tvOS)
                    .textSelection(.enabled)
#endif
            } else {
                Text(parameter)
                    .foregroundColor(.secondary)
            }
        }
    }
}

@available(iOS 13, macOS 11, tvOS 13, watchOS 7, *)
struct ListParameter_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ListParameter("Preview", parameter: "123")
        }
    }
}
