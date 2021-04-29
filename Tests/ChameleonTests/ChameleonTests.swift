import XCTest
@testable import Chameleon

final class ChameleonTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Chameleon().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
