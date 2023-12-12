import Foundation

public func stalinSort <Element: Comparable> (_ array: [Element]) -> [Element] {
    var result: [Element] = []

    for elem in array {
        if let last = result.last, elem < last {
            continue
        }
        
        result.append(elem)
    }

    return result
}
