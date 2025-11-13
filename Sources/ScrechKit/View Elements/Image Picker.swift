#if os(iOS)
import SwiftUI
import PhotosUI

@available(iOS 14, *)
public extension View {
    func imagePicker(_ isPresented: Binding<Bool>, image: Binding<UIImage?>) -> some View {
        self.sheet(isPresented) {
            ImagePicker(image)
                .ignoresSafeArea()
        }
    }
}

@available(iOS 14, *)
public struct ImagePicker: UIViewControllerRepresentable {
    @Binding var image: UIImage?
    
    public init(_ image: Binding<UIImage?>) {
        _image = image
    }
    
    public func makeUIViewController(context: Context) -> PHPickerViewController {
        let config = PHPickerConfiguration()
        let picker = PHPickerViewController(configuration: config)
        
        picker.delegate = context.coordinator
        
        return picker
    }
    
    public func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}
    
    public func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    public class Coordinator: NSObject, PHPickerViewControllerDelegate {
        private let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        public func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)
            
            guard let provider = results.first?.itemProvider else {
                return
            }
            
            if provider.canLoadObject(ofClass: UIImage.self) {
                provider.loadObject(ofClass: UIImage.self) { image, _ in
                    self.parent.image = image as? UIImage
                }
            }
        }
    }
}
#endif
