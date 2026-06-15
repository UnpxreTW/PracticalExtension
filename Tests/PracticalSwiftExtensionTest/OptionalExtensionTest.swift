//
//  PracticalSwiftExtensionTest
//
//  Copyright © 2026 Unpxre (GitHub: UnpxreTW)
//  Licensed under the Apache License 2.0. See LICENSE for details.
//
//  SPDX-License-Identifier: Apache-2.0

import Foundation
import PracticalSwiftExtension
import Testing

private final class OptionalExtensionTest {

	private let noneInt: Int? = nil
	private let someInt: Int? = 0

	private let noneString: String? = nil
	private let emptyString: String? = ""
	private let someString: String? = "Test"

	private let isNil: Any? = nil

	@Test
	private func `is none`() {
		#expect(noneInt.isNone)
		#expect(!someInt.isNone)

		#expect(noneString.isNone)
		#expect(!emptyString.isNone)
		#expect(!someString.isNone)

		#expect(isNil.isNone)
	}

	@Test
	private func `is some`() {
		#expect(!noneInt.isSome)
		#expect(someInt.isSome)

		#expect(!noneString.isSome)
		#expect(emptyString.isSome)
		#expect(someString.isSome)

		#expect(!isNil.isSome)
	}
}
