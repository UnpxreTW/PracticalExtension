//
//  Array.swift
//  PracticalSwiftExtension
//
//  Copyright © 2025 UnpxreTW. All rights reserved.
//

extension Array where Element: BinaryInteger {

	/// 計算 ``any BinaryInteger`` 陣列的最大公因數
	///
	/// - note: 如陣列為空則回傳為 `nil`
	public func gcd() -> Element? {
		guard let first else { return nil }
		return reduce(first) { $0.gcd(with: $1) }
	}
}
