//
//  Optional.swift
//  PracticalExtension
//
//  Created by UnpxreTW on 2021/8/30.
//

public extension Optional {

    /// 可選值為 nil 時返回 True
    var isNone: Bool {
        switch self {
        case .none:
            return true
        case .some:
            return false
        }
    }

    /// 可選值不為 nil 時返回 True
    var isSome: Bool { !isNone }
}
public extension Optional {

    /// 如果為 nil 回傳默認值
    /// - parameter default: 默認值。
    /// - Returns: 如果原來的數值為 nil 則回傳默認值，否則回傳原值。
    func or(_ default: Wrapped) -> Wrapped {
        self ?? `default`
    }

    /// 如果為 nil 則執行默認閉包
    /// - Parameter else:
    /// - Returns: 如果原來的數值為 nil 則執行默認閉包，否則回傳原值。
    func or(else: @autoclosure () -> Wrapped) -> Wrapped {
        self ?? `else`()
    }

    /// 如果為 nil 則擲出默認錯誤
    /// - Parameter exception:
    /// - Returns: 如果原來的數值為 nil 則擲出默認錯誤，否則回傳原值。
    func or(throw exception: Error) throws -> Wrapped {
        guard let unwrapped = self else { throw exception }
        return unwrapped
    }
}
public extension Optional {

    func than(_ closure: @escaping ((Wrapped) -> Void)) {
        if let wrapped = self {
            closure(wrapped)
        }
    }
}
public extension Optional {

    func map<T>(_ closure: (Wrapped) throws -> T, default: T) rethrows -> T {
        try map(closure) ?? `default`
    }

    func map<T>(_ closure: (Wrapped) throws -> T, else: () throws -> T) rethrows -> T {
        try map(closure) ?? `else`()
    }
}
/// 錯誤專用可選值擴展
public extension Optional where Wrapped == Error {

    func or(_ else: (Error) -> Void) {
        guard let error = self else { return }
        `else`(error)
    }
}
