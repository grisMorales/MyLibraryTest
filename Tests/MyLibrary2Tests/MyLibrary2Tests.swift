import XCTest
@testable import MyLibrary2

final class MyLibrary2Tests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        if #available(iOS 13.0, *) {
            XCTAssertEqual(MyLibrary2().text, "Hello, World!")
        } else {
            // Fallback on earlier versions
        }
    }
}
