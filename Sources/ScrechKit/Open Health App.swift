import Foundation

#if os(iOS)
public func openHealthApp() {
    if let url = URL(string: "x-apple-health://") {
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            print("Cannot open Apple Health app")
        }
    }
}
#endif
