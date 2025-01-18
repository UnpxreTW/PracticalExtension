// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "PracticalExtension",
	products: [
		.library(name: "PracticalSwiftExtension", targets: ["PracticalSwiftExtension"]),
		.library(name: "PracticalFoundationExtension", targets: ["PracticalFoundationExtension"]),
		.library(name: "PracticalUIKitExtension", targets: ["PracticalUIKitExtension"])
	],
	targets: [
		.target(name: "PracticalSwiftExtension", dependencies: []),
		.target(name: "PracticalFoundationExtension", dependencies: []),
		.target(name: "PracticalUIKitExtension", dependencies: []),
		.testTarget(name: "PracticalSwiftExtensionTest", dependencies: ["PracticalSwiftExtension"])
	]
)
