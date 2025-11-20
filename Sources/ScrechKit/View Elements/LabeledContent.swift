import SwiftUI

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
extension LabeledContent where Label == SwiftUI.Label<Text, Image>, Content == Text {
    init(_ title: String, icon: String, value: String) {
        self.init {
            Text(value)
        } label: {
            Label(title, systemImage: icon)
        }
    }
}
