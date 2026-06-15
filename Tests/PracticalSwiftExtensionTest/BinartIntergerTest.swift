//
//  PracticalSwiftExtensionTest
//
//  Copyright © 2026 Unpxre (GitHub: UnpxreTW)
//  Licensed under the Apache License 2.0. See LICENSE for details.
//
//  SPDX-License-Identifier: Apache-2.0

import Testing

@Test
@available(iOS 13.0, *)
private func 測試最大公約數() {
	#expect(98.gcd(with: 56) == 14)
}
