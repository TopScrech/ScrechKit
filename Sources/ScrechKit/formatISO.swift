import Foundation

/// Returns a String date formatted like "May 12, 2004"
public func formatISO(_ date: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    formatter.locale = Locale(identifier: "en_US_POSIX")
    
    guard let date = formatter.date(from: date) else {
        return "Invalid date format"
    }
    
    formatter.dateFormat = "MMM d, yyyy"
    
    return formatter.string(from: date)
}

/// Returns a String date formatted like "May 12, 2004"
@available(iOS 15, macOS 12, tvOS 15, watchOS 8, *)
public func formatISO(_ date: Date) -> String {
    date.formatted(.dateTime.year().month().day())
}
