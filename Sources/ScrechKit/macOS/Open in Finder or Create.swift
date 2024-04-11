#if os(macOS)

@available(macOS 10, *)
public func openInFinderOrCreate(_ folderPath: String) {
    let fileManager = FileManager.default
    
    // Check existance
    if !fileManager.fileExists(atPath: folderPath) {
        do {
            // Create
            try fileManager.createDirectory(atPath: folderPath, withIntermediateDirectories: true, attributes: nil)
            
            print("Folder created successfully")
        } catch {
            print("Error creating folder: \(error.localizedDescription)")
            return
        }
    }
    
    // Open
    NSWorkspace.shared.selectFile(nil, inFileViewerRootedAtPath: folderPath)
}

#endif
