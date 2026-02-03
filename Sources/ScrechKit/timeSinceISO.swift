import Foundation
import OSLog

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public func timeSinceISO(_ date: String) -> LocalizedStringKey {
    let formatter = ISO8601DateFormatter()
    
    guard let date = formatter.date(from: date) else {
        Logger().warning("Couldn't parse date: \(date)")
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

@available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
public func timeSinceISO(_ date: Date) -> LocalizedStringKey {
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
