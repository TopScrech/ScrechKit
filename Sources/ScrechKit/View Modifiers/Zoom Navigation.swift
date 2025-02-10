#if !os(macOS)
import SwiftUI

@available(iOS 17, tvOS 17, watchOS 10, *)
public struct NavigationZoomTransition: ViewModifier {
    private let sourceID: String
    private let namespace: Namespace.ID
    
    init(_ sourceID: String, namespace: Namespace.ID) {
        self.sourceID = sourceID
        self.namespace = namespace
    }
    
    public func body(content: Content) -> some View {
        if #available(iOS 18, tvOS 18, watchOS 11, visionOS 2, *) {
            content
                .navigationTransition(.zoom(sourceID: sourceID, in: namespace))
        } else {
            content
        }
    }
}

@available(iOS 17, tvOS 17, watchOS 10, *)
public struct MatchedTransitionSource: ViewModifier {
    private let id: String
    private let namespace: Namespace.ID
    
    init(_ id: String, namespace: Namespace.ID) {
        self.id = id
        self.namespace = namespace
    }
    
    public func body(content: Content) -> some View {
        if #available(iOS 18, tvOS 18, watchOS 11, visionOS 2, *) {
            content
                .matchedTransitionSource(id: id, in: namespace)
        } else {
            content
        }
    }
}

@available(iOS 17, tvOS 17, watchOS 10, *)
public extension View {
    func navigationZoomTransition(_ sourceID: String, in namespace: Namespace.ID) -> some View {
        modifier(NavigationZoomTransition(sourceID, namespace: namespace))
    }
    
    func matchedTransitionSource(_ id: String, in namespace: Namespace.ID) -> some View {
        modifier(MatchedTransitionSource(id, namespace: namespace))
    }
}
#endif
