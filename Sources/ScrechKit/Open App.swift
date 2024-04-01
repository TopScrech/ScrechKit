import Foundation

func openApp(_ bundleID: String) -> Bool {
    guard let LSApplicationWorkspace = objc_getClass("LSApplicationWorkspace") as? NSObject.Type else {
        return false
    }
    
    guard let workspace = LSApplicationWorkspace.perform(Selector(("defaultWorkspace")))?.takeUnretainedValue() as? NSObject else {
        return false
    }
    
    let open = workspace.perform(Selector(("openApplicationWithBundleID:")), with: bundleID) != nil
    return open
}
