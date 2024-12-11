//
//  Array.swift
//  PracticalSwiftExtension
//
//  Copyright © 2024 UnpxreTW. All rights reserved.
//

import Testing

@Test("測試整數陣列取最大公因數")
private func BinaryIntegerArrayGCD() {
	#expect([12, 15, 9].gcd() == 3)
	#expect([8, 16, 32].gcd() == 8)
	#expect([7, 11, 13].gcd() == 1, "互質")
	#expect(Array<Int>().gcd() == nil, "空陣列為 `nil`")
}

extension Array where Element: BinaryInteger {

	/// 計算 ``any BinaryInteger`` 陣列的最大公因數
	///
	/// - note: 如陣列為空則回傳為 `nil`
	public func gcd() -> Element? {
		guard let first else { return nil }
		return reduce(first) { $0.gcd(with: $1) }
	}
}
