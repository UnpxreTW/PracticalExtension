//
//  File.swift
//
//
//  Created by 米恩 on 2022/3/13.
//

#if canImport(UIKit)

import UIKit

public extension UIView {
    convenience init(frame: CGRect, background color: UIColor) {
        self.init(frame: frame)
        backgroundColor = color
    }

    convenience init(background color: UIColor) {
        self.init(frame: .zero, background: color)
    }
}

#endif
