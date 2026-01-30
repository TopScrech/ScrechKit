import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension View {
    @ViewBuilder
    func navSubtitle(_ subtitle: LocalizedStringKey) -> some View {
#if os(visionOS) || os(tvOS) || os(watchOS)
        self
#else
        if #available(iOS 26, macOS 11, *) {
            self
                .navigationSubtitle(subtitle)
        } else {
            self
        }
#endif
    }
    
    func navSubtitle<T: CustomStringConvertible>(_ subtitle: T) -> some View {
        navSubtitle(LocalizedStringKey(subtitle.description))
    }
}
