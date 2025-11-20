import SwiftUI

#if os(iOS)
@available(iOS 13, *)
struct DetectOrientation: ViewModifier {
    @Binding private var orientation: UIDeviceOrientation
    
    init(_ orientation: Binding<UIDeviceOrientation>) {
        _orientation = orientation
    }
    
    func body(content: Content) -> some View {
        content
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                orientation = UIDevice.current.orientation
            }
    }
}

@available(iOS 17, *)
public extension View {
    func detectOrientation(_ orientation: Binding<UIDeviceOrientation>) -> some View {
        modifier(DetectOrientation(orientation))
    }
}
#endif
