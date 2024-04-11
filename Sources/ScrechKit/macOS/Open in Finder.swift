#if os(macOS)

@available(macOS 10, *)
public func openInFinder(_ fullPath: String? = nil, rootedAt: String) {
    NSWorkspace.shared.selectFile(fullPath, inFileViewerRootedAtPath: rootedAt)
}

#endif
