// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PracticalExtension",
    products: [
        .library(name: "PracticalExtension", targets: ["PracticalExtension"]),
        .library(name: "PracticalSwiftExtension", targets: ["PracticalSwiftExtension"]),
        .library(name: "PracticalFoundationExtension", targets: ["PracticalFoundationExtension"])
    ],
    dependencies: [],
    targets: [
        .target(name: "PracticalExtension", dependencies: ["PracticalSwiftExtension", "PracticalFoundationExtension"]),
        .target(name: "PracticalSwiftExtension"),
        .target(name: "PracticalFoundationExtension"),
        .testTarget(name: "PracticalSwiftExtensionTest", dependencies: ["PracticalSwiftExtension"])
    ]
)
