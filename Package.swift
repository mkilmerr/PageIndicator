// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PageIndicator",
    platforms: [.iOS(.v15), .iOS(.v14), .iOS(.v13), .iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PageIndicator",
            targets: ["PageIndicator"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PageIndicator",
            dependencies: [])
    ]
)
