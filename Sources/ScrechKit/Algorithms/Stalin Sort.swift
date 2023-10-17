import Foundation

public func stalinSort <Element: Comparable>(_ array: [Element]) -> [Element] {
    var last: Element?
    return array.filter { elem in
        defer { last = elem }
        return last == nil || elem >= last!
    }
}
