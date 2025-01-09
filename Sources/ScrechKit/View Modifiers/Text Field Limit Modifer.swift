import Combine

@available(iOS 13, watchOS 6, tvOS 13, macOS 10.15, *)
struct TextFieldLimitModifer: ViewModifier {
    @Binding var value: String
    var length: Int

    func body(content: Content) -> some View {
        if #available(iOS 14, watchOS 7, tvOS 14, macOS 11, *) {
            content
                .onChange(of: $value.wrappedValue) {
                    value = String($0.prefix(length))
                }
        } else {
            content
                .onReceive(Just(value)) {
                    value = String($0.prefix(length))
                }
        }
    }
}

@available(iOS 13, watchOS 6, tvOS 13, macOS 10.15, *)
public extension View {
    func limitInputLength(_ value: Binding<String>, length: Int) -> some View {
        self.modifier(TextFieldLimitModifer(value: value, length: length))
    }
}
