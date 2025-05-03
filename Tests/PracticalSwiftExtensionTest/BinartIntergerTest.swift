//
//  BinaryIntegerTest.swift
//  PracticalSwiftExtensionTest
//
//  Copyright © 2025 UnpxreTW. All rights reserved.
//

import Testing

@Test("測試最大公約數")
@available(iOS 13.0, *)
private func BinaryIntegerGCD() {
	#expect(98.gcd(with: 56) == 14)
}
