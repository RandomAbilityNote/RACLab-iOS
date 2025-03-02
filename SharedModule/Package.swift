// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharedModule",
    products: [
        .library(
            name: "SharedModule",
            targets: ["Util"]
        )
    ],
    targets: [
        .target(
            name: "Util"
        ),
        .testTarget(
            name: "SharedModuleTests",
            dependencies: ["Util"]
        )
    ]
)
