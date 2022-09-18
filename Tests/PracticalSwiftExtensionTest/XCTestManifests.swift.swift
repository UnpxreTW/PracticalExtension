#if !canImport(ObjectiveC)
import XCTest

extension OptionExtensionTest {

    static let __allTests__ExtensionTests = [
        ("testIsNone", testIsNone),
        ("testIsSome", testIsSome)
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(OptionalExtensionTest.__allTests__ExtensionTests)
    ]
}
#endif
