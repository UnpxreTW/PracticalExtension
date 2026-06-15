//
//  PracticalFoundationExtension
//
//  Copyright © 2026 Unpxre (GitHub: UnpxreTW)
//  Licensed under the Apache License 2.0. See LICENSE for details.
//
//  SPDX-License-Identifier: Apache-2.0

import Foundation

public extension Data {
    func printUInt8Array() -> String {
        "[ " + map { String($0) }.joined(separator: ", ") + " ]"
    }

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
