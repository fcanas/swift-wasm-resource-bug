import XCTest

import SubPackageWithResourceTests

var tests = [XCTestCaseEntry]()
tests += SubPackageWithResourceTests.allTests()
XCTMain(tests)
