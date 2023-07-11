#if os(iOS)
import SwiftUI

@available(iOS 14, *)
public extension View {
    func cameraPicker(_ isPresented: Binding<Bool>, image: Binding<UIImage?>) -> some View {
        self.sheet(isPresented) {
            CameraPicker(image)
                .ignoresSafeArea()
            
        }
    }
}

@available(iOS 13, *)
public struct CameraPicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var image: UIImage?
    
    public init(_ image: Binding<UIImage?>) {
        _image = image
    }
    
    public func makeUIViewController(context: UIViewControllerRepresentableContext<CameraPicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = context.coordinator
        return picker
    }
    
    public func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<CameraPicker>) {}
    
    public func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    public class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        private let parent: CameraPicker
        
        init(_ parent: CameraPicker) {
            self.parent = parent
        }
        
        public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.image = uiImage
            }
            
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
#endif
