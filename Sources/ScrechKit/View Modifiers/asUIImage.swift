#if os(iOS) && os(tvOS)
import SwiftUI

@available(iOS 13, tvOS 13, *)
public extension View {
    func asUIImage() -> UIImage {
        let controller = UIHostingController(rootView: self)
        let imageSize = getSize(of: controller)
        
        let image = getImage(from: controller.view, with: imageSize)
        controller.view.removeFromSuperview()
        
        return image
    }
    
    private func getSize(of controller: UIHostingController<Self>) -> CGSize {
        controller.view.frame = CGRect(x: 0, y: CGFloat(Int.max), width: 1, height: 1)
        
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        scene?.windows.first?.rootViewController?.view.addSubview(controller.view)
        
        let size = controller.sizeThatFits(in: UIScreen.main.bounds.size)
        controller.view.bounds = CGRect(origin: .zero, size: size)
        controller.view.sizeToFit()
        
        return size
    }
    
    private func getImage(from view: UIView, with size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: CGRect(origin: .zero, size: size))
        
        return renderer.image { context in
            view.layer.render(in: context.cgContext)
        }
    }
}
#endif
