import UniformTypeIdentifiers

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public func getMimeType(_ url: URL) -> String? {
    let identifier = UTType(filenameExtension: url.pathExtension)
    return identifier?.preferredMIMEType
}
