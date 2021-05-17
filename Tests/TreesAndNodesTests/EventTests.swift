import XCTest
@testable import TreesAndNodes

final class EventTests: XCTestCase {
    func testCorrectEvent() {
        let event = Event()
        XCTAssertEqual(event.name, "iOS Ukraine 2")
        XCTAssertEqual(event.speaker, "Pavlo Taikalo")
        XCTAssertEqual(event.company, "MacPaw")
    }
}
