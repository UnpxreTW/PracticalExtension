//
//  String.swift
//  
//
//  Created by UnpxreTW on 2022/2/18.
//

import Foundation

extension String.Encoding {
    
    public static var big5: String.Encoding {
        let CFEncoding = CFStringEncodings.big5
        let NSEncoding = CFStringConvertEncodingToNSStringEncoding(CFStringEncoding(CFEncoding.rawValue))
        return String.Encoding(rawValue: NSEncoding)
    }
}
