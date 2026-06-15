//
//  PracticalSwiftExtension
//
//  Copyright © 2026 Unpxre (GitHub: UnpxreTW)
//  Licensed under the Apache License 2.0. See LICENSE for details.
//
//  SPDX-License-Identifier: Apache-2.0

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
