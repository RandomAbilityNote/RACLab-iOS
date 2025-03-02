// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ThirdPartyModule",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ThirdPartyModule",
            targets: ["ThirdPartyModule"]),
    ],
    dependencies: [
      .package(url:
                "https://github.com/firebase/firebase-ios-sdk.git",
               .upToNextMajor(from: "11.9.0")
              )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ThirdPartyModule",
            dependencies: [
              .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
              .product(name: "FirebaseCore", package: "firebase-ios-sdk"),
              .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
              .product(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk")
            ]
        ),
        .testTarget(
            name: "ThirdPartyModuleTests",
            dependencies: ["ThirdPartyModule"]
        )
    ]
)
