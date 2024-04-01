import Foundation

public func openApp(
    _ bundleID: String,
    onSuccess: @escaping () -> Void = {},
    onFailure: @escaping () -> Void = {}
) {
    guard let LSApplicationWorkspace = objc_getClass("LSApplicationWorkspace") as? NSObject.Type else {
        onFailure()
        return
    }
    
    guard let workspace = LSApplicationWorkspace.perform(Selector(("defaultWorkspace")))?.takeUnretainedValue() as? NSObject else {
        onFailure()
        return
    }
    
    let open = workspace.perform(Selector(("openApplicationWithBundleID:")), with: bundleID) != nil
    
    if open {
        onSuccess()
    } else {
        onFailure()
    }
}
