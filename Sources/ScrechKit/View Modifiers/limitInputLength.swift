import Combine

@available(iOS 14, watchOS 7, tvOS 14, macOS 11, *)
struct TextFieldLimitModifer: ViewModifier {
    @Binding var value: String
    var length: Int
    
    func body(content: Content) -> some View {
        if #available(iOS 17, watchOS 10, tvOS 17, macOS 14, *) {
            content
                .onChange(of: $value.wrappedValue) { _, newValue in
                    value = String(newValue.prefix(length))
                }
        } else {
            content
                .onChange(of: $value.wrappedValue) {
                    value = String($0.prefix(length))
                }
        }
    }
}

@available(iOS 14, watchOS 7, tvOS 14, macOS 11, *)
public extension View {
    func limitInputLength(_ value: Binding<String>, length: Int) -> some View {
        self.modifier(TextFieldLimitModifer(value: value, length: length))
    }
}
