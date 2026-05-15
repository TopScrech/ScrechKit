import Testing
@testable import ScrechKit

struct DateTests {
    @Test func testFormatISOString() {
        let date = "2004-05-12T11:08:37+0100"
        let result = formatISO(date)
        
        #expect(result == "May 12, 2004")
    }
    
    @Test func testFormatISODate() {
        let calendar = Calendar.current
        
        let date = calendar.date(from: DateComponents(
            year: 2004,
            month: 5,
            day: 12
        ))
        
        let result = formatISO(date!)
        
        #expect(result == "May 12, 2004")
    }
}
