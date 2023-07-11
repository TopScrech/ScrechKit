import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public struct PulseCircle: View {
    private let color: Color
    private let size: CGFloat
    
    @State private var shouldPulse = false
    
    public init(_ color: Color = .blue, size: CGFloat = 12) {
        self.color = color
        self.size = size
    }
    
    public var body: some View {
        SwiftUI.Circle()
            .fill(color)
            .frame(width: size, height: size)
            .scaleEffect(shouldPulse ? 1.2 : 1.0)
            .opacity(shouldPulse ? 0.6 : 1.0)
            .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: shouldPulse)
            .onAppear {
                shouldPulse.toggle()
            }
    }
}

@available(iOS 13, macOS 11, tvOS 13, watchOS 6, *)
struct PulseCircle_Previews: PreviewProvider {
    static var previews: some View {
        PulseCircle()
            .darkSchemePreferred()
    }
}
