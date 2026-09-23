import Testing
@testable import ScrechKit

struct DateTests {
    @Test func testFormatISOString() {
        let date = "2004-05-12T11:08:37+0100"
        let result = formatISO(date)
        
        #expect(result == "May 12, 2004")
    }
    
    @Test func testFormatISODate() throws {
        let calendar = Calendar(identifier: .gregorian)
        
        let date = try #require(calendar.date(from: DateComponents(
            year: 2004,
            month: 5,
            day: 12
        )))
        
        let result = formatISO(date)
        let expected = date.formatted(date: .abbreviated, time: .omitted)
        
        #expect(result == expected)
    }
}
