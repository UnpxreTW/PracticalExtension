//
//  BinaryInteger.swift
//  PracticalSwiftExtension
//
//  Copyright © 2024 UnpxreTW. All rights reserved.
//

import Testing

@Test("測試最大公約數")
private func BinaryIntegerGCD() {
	#expect(98.gcd(with: 56) == 14)
}

extension BinaryInteger {

	/// 基於歐幾里德算法取得最大公約數
	public func gcd(with other: Self) -> Self {
		var lhs = self
		var rhs = other
		while rhs != 0 {
			let temp = rhs
			rhs = lhs % rhs
			lhs = temp
		}
		return lhs
	}
}
