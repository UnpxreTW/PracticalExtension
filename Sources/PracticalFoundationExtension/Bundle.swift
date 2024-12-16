//
//  Bundle.swift
//  PracticalFoundationExtension
//
//  Copyright © 2024 UnpxreTW. All rights reserved.
//

import Foundation

extension Foundation.Bundle {

	/// 取得 `infoDictionary` 中的實際應用程式名稱
	public var applicationName: String {
		infoDictionary?["CFBundleName"] as? String ?? "⚠️"
	}

	/// 取得 `infoDictionary` 中應用程式顯示名稱
	public var displayName: String {
		infoDictionary?["CFBundleDisplayName"] as? String ?? "⚠️"
	}

	/// 取得 `infoDictionary` 中的應用程式版本
	public var applicationVersion: String {
		infoDictionary?["CFBundleShortVersionString"] as? String ?? "⚠️"
	}

	/// 取得 `infoDictionary` 中的應用程式建構版本
	public var applicationBuild: String {
		infoDictionary?["CFBundleVersion"] as? String ?? "⚠️"
	}

	/// 取得完整應用程式版本字串
	public var applicationFullVersionString: String {
		"\(applicationVersion).\(applicationBuild)"
	}
}
