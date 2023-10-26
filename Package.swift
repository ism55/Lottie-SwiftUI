// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LottieSwiftUI",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "LottieSwiftUI",
            targets: ["LottieSwiftUI"]
        ),
    ],
    dependencies: [
        .package(name: "Lottie", url: "https://github.com/airbnb/lottie-spm.git", .exact(Version(4, 0, 1)))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "LottieSwiftUI",
            dependencies: ["Lottie"]
        )
    ]
)
