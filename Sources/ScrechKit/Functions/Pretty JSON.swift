import Foundation

public func prettyJSON(_ input: Any?) -> String? {
    do {
        let jsonData: Data
        if let string = input as? String, let data = string.data(using: .utf8) {
            jsonData = data
        } else if let data = input as? Data {
            jsonData = data
        } else {
            return nil
        }
        
        if let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any] {
            let prettyData = try JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted)
            
            if let prettyJson = String(data: prettyData, encoding: .utf8) {
                print(prettyJson)
                return prettyJson
            }
        }
    } catch {
        return nil
    }
    
    return nil
}
