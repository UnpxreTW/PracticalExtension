//
//  PracticalSwiftExtensionTest
//
//  Copyright © 2026 Unpxre (GitHub: UnpxreTW)
//  Licensed under the Apache License 2.0. See LICENSE for details.
//
//  SPDX-License-Identifier: Apache-2.0

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
