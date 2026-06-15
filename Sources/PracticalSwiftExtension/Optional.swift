//
//  PracticalSwiftExtension
//
//  Copyright © 2026 Unpxre (GitHub: UnpxreTW)
//  Licensed under the Apache License 2.0. See LICENSE for details.
//
//  SPDX-License-Identifier: Apache-2.0

extension Optional {

	/// 可選值為 nil 時返回 True
	public var isNone: Bool {
		switch self {
		case .none:
			true
		case .some:
			false
		}
	}

	/// 可選值不為 nil 時返回 True
	public var isSome: Bool { !isNone }
}

extension Optional {

	/// 如果為 nil 回傳默認值
	/// - parameter default: 默認值。
	/// - Returns: 如果原來的數值為 nil 則回傳默認值，否則回傳原值。
	public func or(_ default: Wrapped) -> Wrapped {
		self ?? `default`
	}

	/// 如果為 nil 則執行默認閉包
	/// - Parameter else:
	/// - Returns: 如果原來的數值為 nil 則執行默認閉包，否則回傳原值。
	public func or(else: @autoclosure () -> Wrapped) -> Wrapped {
		self ?? `else`()
	}

	/// 如果為 nil 則擲出默認錯誤
	/// - Parameter exception:
	/// - Returns: 如果原來的數值為 nil 則擲出默認錯誤，否則回傳原值。
	public func or(throw exception: Error) throws -> Wrapped {
		guard let unwrapped = self else { throw exception }
		return unwrapped
	}
}

extension Optional {

	public func than(_ closure: @escaping ((Wrapped) -> Void)) {
		if let wrapped = self {
			closure(wrapped)
		}
	}
}

extension Optional {

	public func map<T>(_ closure: (Wrapped) throws -> T, default: T) rethrows -> T {
		try map(closure) ?? `default`
	}

	public func map<T>(_ closure: (Wrapped) throws -> T, else: () throws -> T) rethrows -> T {
		try map(closure) ?? `else`()
	}
}

/// 錯誤專用可選值擴展
extension Error? {

	public func or(_ else: (Error) -> Void) {
		guard let error = self else { return }
		`else`(error)
	}
}
