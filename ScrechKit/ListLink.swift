import SwiftUI

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public struct ListLink <Destination: View>: View {
    private let name: String
    private let icon: String?
    private let destination: Destination
    
    public init (
        _ name: String = "Unknown",
        icon: String? = nil,
        @ViewBuilder destination: () -> Destination = { EmptyView() }
    ) {
        self.name = name
        self.icon = icon
        self.destination = destination()
    }
    
    public var body: some View {
        NavigationLink {
            destination
        } label: {
            if let icon {
                Label(name, systemImage: icon)
            } else {
                Text(name)
            }
        }
    }
}

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
struct ListLink_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ListLink()
            ListLink(icon: "hammer")
        }
    }
}
