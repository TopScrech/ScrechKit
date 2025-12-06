import Foundation

public func formatISO(_ date: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    formatter.locale = Locale(identifier: "en_US_POSIX")
    
    guard let date = formatter.date(from: date) else {
        return "Invalid date format"
    }
    
    formatter.dateFormat = "dd-MM-yyyy"
    
    return formatter.string(from: date)
}

public func formatISO(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd-MM-yyyy"
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    formatter.locale = Locale(identifier: "en_US_POSIX")
    
    return formatter.string(from: date)
}
