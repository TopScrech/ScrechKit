import Foundation

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public func timeSinceISO(_ date: String) -> LocalizedStringResource {
    let formatter = ISO8601DateFormatter()
    
    guard let date = formatter.date(from: date) else {
        return "-"
    }
    
    let sinceNowSeconds = Int(date.timeIntervalSinceNow * -1)
    
    guard sinceNowSeconds > 1 else {
        return "Now"
    }
    
    guard sinceNowSeconds > 60 else {
        return "\(sinceNowSeconds) seconds ago"
    }
    
    let sinceNowMinutes = sinceNowSeconds / 60
    guard sinceNowMinutes > 60 else {
        return "\(sinceNowMinutes) minutes ago"
    }
    
    let sinceNowHours = sinceNowMinutes / 60
    guard sinceNowHours > 24 else {
        return "\(sinceNowHours) hours ago"
    }
    
    let sinceNowDays = sinceNowHours / 24
    return "\(sinceNowDays) days ago"
}

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
