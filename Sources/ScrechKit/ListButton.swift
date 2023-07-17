import SwiftUI

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public struct ListButton: View {
    private let name: LocalizedStringResource
    private let icon, actionIcon: String?
    private let color: Color
    private let action: () -> Void
    
    public init (
        _ name: LocalizedStringResource,
        icon: String = "",
        actionIcon: String,
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
    
    @ViewBuilder
    private var buttonLabel: some View {
        HStack {
            if let icon {
                Image(systemName: icon)
                    .title2()
                    .foregroundColor(.white)
                    .frame(width: 32, height: 32)
                    .background {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(color)
                    }
            }
            
            Text(name)
                .semibold()
            
            Spacer()
            
            if let actionIcon {
                Image(systemName: actionIcon)
                    .title3(.semibold)
                    .foregroundColor(.secondary)
            }
        }
        .foregroundColor(.primary)
        .padding(.vertical, 2)
    }
}

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
struct ListButton_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ListButton("Preview", icon: "hammer", actionIcon: "camera")
        }
    }
}
