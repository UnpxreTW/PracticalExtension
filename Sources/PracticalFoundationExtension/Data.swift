//
//  Data.swift
//  PracticalFoundationExtension
//
//  Created by UnpxreTW on 2022/2/17.
//

import Foundation

public extension Data {
    /// 使用任何型態數值初始化 Data 結構，並可以依據需求裁切大小或進行補零
    init<T>(from value: T, bySize size: Int? = nil, isBigEndian: Bool = false) {
        var data: Data = .init()
        data = Swift.withUnsafeBytes(of: value) { Data($0) }
        if let size = size {
            let valueSize = MemoryLayout.size(ofValue: value)
            if size > valueSize {
                data.append(contentsOf: Array(
                    repeating: 0,
                    count: size - valueSize)
                )
            } else {
                data = data.subdata(in: 0 ..< size)
            }
        }
        if isBigEndian { data.reverse() }
        self = data
    }
}
