//
//  PracticalSwiftExtensionTest
//
//  Copyright © 2026 Unpxre (GitHub: UnpxreTW)
//  Licensed under the Apache License 2.0. See LICENSE for details.
//
//  SPDX-License-Identifier: Apache-2.0

import Testing

@Test
private func 測試整數陣列取最大公因數() {
	#expect([12, 15, 9].gcd() == 3)
	#expect([8, 16, 32].gcd() == 8)
	#expect([7, 11, 13].gcd() == 1, "互質")
	#expect([Int]().gcd() == nil, "空陣列為 `nil`")
}
