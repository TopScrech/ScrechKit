import SwiftUI

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public struct ListButton: View {
    private let name: LocalizedStringKey
    private let icon, actionIcon: String
    private let color: Color
    private let action: () -> Void
    
    public init (
        _ name: LocalizedStringKey,
        icon: String = "",
        actionIcon: String = "",
        color: Color = .blue,
        action: @escaping () -> Void = {}
    ) {
        self.name = name
        self.icon = icon
        self.actionIcon = actionIcon
        self.color = color
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            buttonLabel
        }
    }
    
    private var buttonLabel: some View {
        HStack {
            if !icon.isEmpty {
                Image(systemName: icon)
                    .title2()
                    .foregroundColor(.white)
                    .frame(32)
                    .background {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(color)
                    }
            }
            
            Text(name)
            
            Spacer()
            
            if !actionIcon.isEmpty {
                Image(systemName: actionIcon)
                //                    .title3(.semibold)
                    .secondary()
            }
        }
        .foregroundColor(.primary)
        .padding(.vertical, 2)
    }
}

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
#Preview {
    List {
        ListButton("Preview", icon: "hammer", actionIcon: "camera")
    }
}
