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
    
    public var body: some View {
        HStack {
            if icon.isEmpty {
                Text(name)
            } else {
                Label(name, systemImage: icon)
            }
            
            Spacer()
            
            Text(param)
                .enableSelection()
        }
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
struct EnableSelection: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 15, watchOS 7, macOS 12, tvOS 14, *) {
            content
#if !os(watchOS) && !os(tvOS)
                .textSelection(.enabled)
#endif
        } else {
            content
        }
    }
}

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    func enableSelection() -> some View {
        modifier(EnableSelection())
    }
}

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
#Preview {
    List {
        ListParam("Preview", param: "123")
    }
}
