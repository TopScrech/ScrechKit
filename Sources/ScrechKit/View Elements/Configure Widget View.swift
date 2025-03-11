#if canImport(WidgetKit)
import WidgetKit

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public struct ConfigureWidgetView: View {
    @Environment(\.widgetFamily) private var widgetFamily
    
    private let title: LocalizedStringKey
    private let image: Image
    private let lastStepItem: LocalizedStringKey
    
    init(_ title: LocalizedStringKey, image: Image, lastStepItem: LocalizedStringKey) {
        self.title = title
        self.image = image
        self.lastStepItem = lastStepItem
    }
    
    private var scale: CGFloat {
        switch widgetFamily {
        case .systemMedium:
            1.25
            
        default:
            1
        }
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Label {
                Text("MC Stats")
                    .bold()
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            } icon: {
                image
                    .resizable()
                    .frame(width: 32, height: 32)
                    .clipShape(.rect(cornerRadius: 8))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("1. **Long press** the widget")
                Text("2. Tap on **Edit Widget**")
                Text("3. **Choose a \(lastStepItem)** from the list")
            }
            .fontSize(10)
        }
        .padding()
        .scaleEffect(scale)
    }
}

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
#Preview {
    ConfigureWidgetView("Preview", image: Image(systemName: "hammer"), lastStepItem: "server")
}
#endif
