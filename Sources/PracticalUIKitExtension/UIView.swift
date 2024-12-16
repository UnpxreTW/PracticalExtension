//
//  UIView.swift
//  PracticalUIKitExtension
//
//  Copyright © 2024 UnpxreTW. All rights reserved.
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
