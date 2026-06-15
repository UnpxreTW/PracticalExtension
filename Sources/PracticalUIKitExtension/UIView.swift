//
//  PracticalUIKitExtension
//
//  Copyright © 2026 Unpxre (GitHub: UnpxreTW)
//  Licensed under the Apache License 2.0. See LICENSE for details.
//
//  SPDX-License-Identifier: Apache-2.0

#if canImport(UIKit)

import UIKit

extension UIView {

	public convenience init(frame: CGRect, background color: UIColor) {
		self.init(frame: frame)
		backgroundColor = color
	}

	public convenience init(background color: UIColor) {
		self.init(frame: .zero, background: color)
	}
}

#endif
