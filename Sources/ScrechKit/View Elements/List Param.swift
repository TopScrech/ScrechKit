import SwiftUI

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public struct ListParam: View {
    private let name: LocalizedStringKey
    private let icon: String
    private let param: String
    
    public init(_ name: LocalizedStringKey, icon: String = "", param: String = "") {
        self.name = name
        self.icon = icon
        self.param = param
    }
    
    public init(_ name: String, icon: String = "", param: String = "") {
        self.name = "\(name)"
        self.icon = icon
        self.param = param
    }
    
    public var body: some View {
#if os(tvOS)
        Button {
            
        } label: {
            label
        }
#else
        label
#endif
    }
    
    private var label: some  View {
        HStack {
            if icon.isEmpty {
                Text(name)
            } else {
                Label(name, systemImage: icon)
            }
            
            Spacer()
            
            Text(param)
                .enableSelection()
                .secondary()
                .multilineTextAlignment(.trailing)
        }
    }
}

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
#Preview {
    List {
        ListParam("Preview", param: "123")
    }
}
