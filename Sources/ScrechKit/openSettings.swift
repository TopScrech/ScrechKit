#if !os(macOS) && !os(watchOS)
import Foundation

public func openSettings(
    _ onCompletion: @escaping () -> Void = {},
    onFailure: @escaping () -> Void = {}
) {
    if let url = URL(string: UIApplication.openSettingsURLString) {
        UIApplication.shared.open(url, options: [:]) {_ in
            onCompletion()
        }
    } else {
        onFailure()
    }
}
#endif
