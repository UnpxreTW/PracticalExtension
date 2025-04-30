//
//  BinaryInteger.swift
//  PracticalSwiftExtension
//
//  Copyright © 2025 UnpxreTW. All rights reserved.
//

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
