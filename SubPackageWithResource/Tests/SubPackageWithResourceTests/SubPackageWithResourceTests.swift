import XCTest
@testable import SubPackageWithResource

final class SubPackageWithResourceTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SubPackageWithResource().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
