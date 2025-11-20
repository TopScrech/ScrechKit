import Foundation

public func stalinSort<Element: Comparable>(_ array: [Element]) -> [Element] {
    var last: Element?
    
    return array.compactMap { item in
        guard last == nil || item >= last! else {
            return nil
        }
        
        last = item
        return item
    }
}
