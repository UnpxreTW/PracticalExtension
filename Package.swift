// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PracticalExtension",
    products: [
        .library(name: "PracticalExtension", targets: ["PracticalExtension"]),
        .library(name: "PracticalSwiftExtension", targets: ["PracticalSwiftExtension"]),
        .library(name: "PracticalFoundationExtension", targets: ["PracticalFoundationExtension"]),
        .library(name: "PracticalUIKitExtension", targets: ["PracticalUIKitExtension"])
    ],
    dependencies: [],
    targets: [
        .target(name: "PracticalExtension", dependencies: ["PracticalSwiftExtension", "PracticalFoundationExtension", "PracticalUIKitExtension"]),
        .target(name: "PracticalSwiftExtension", dependencies: []),
        .target(name: "PracticalFoundationExtension", dependencies: []),
        .target(name: "PracticalUIKitExtension", dependencies: []),
        .testTarget(name: "PracticalSwiftExtensionTest", dependencies: ["PracticalSwiftExtension"])
    ]
)
