import Foundation

public func prettyJSON(_ data: Data?) throws -> String {
    guard let data else {
        throw NSError(domain: "prettyJSON", code: 0, userInfo: [NSLocalizedDescriptionKey: "Data is nil"])
    }
    
    do {
        let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
        let jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted)
        
        if let jsonString = String(data: jsonData, encoding: .utf8) {
            return jsonString
        } else {
            throw NSError(domain: "prettyJSON", code: 1, userInfo: [NSLocalizedDescriptionKey: "Failed to encode JSON string"])
        }
    } catch {
        throw error
    }
}
