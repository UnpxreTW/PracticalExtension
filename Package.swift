// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PracticalExtension",
    products: [
        .library(name: "PracticalExtension", targets: ["PracticalExtension"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "PracticalExtension", dependencies: ["PracticalSwiftExtension"]),
        .target(name: "PracticalSwiftExtension"),
        .testTarget(name: "PracticalSwiftExtensionTest", dependencies: ["PracticalSwiftExtension"])
    ]
)
