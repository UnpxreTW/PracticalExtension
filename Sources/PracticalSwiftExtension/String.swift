//
//  PracticalSwiftExtension
//
//  Copyright © 2026 Unpxre (GitHub: UnpxreTW)
//  Licensed under the Apache License 2.0. See LICENSE for details.
//
//  SPDX-License-Identifier: Apache-2.0

import Foundation

extension String.Encoding {

	public static var big5: String.Encoding {
		let CFEncoding: CFStringEncodings = .big5
		let NSEncoding: CFStringConvertEncodingToNSStringEncoding = .init(CFStringEncoding(CFEncoding.rawValue))
		return String.Encoding(rawValue: NSEncoding)
	}
}
