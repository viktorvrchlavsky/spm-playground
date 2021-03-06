// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyAwesomePackage",
    platforms: [
        .iOS(.v15),
        /// Since iOS packeges are buildable on the ARM64 macs
        /// it's good to limit the macOS version as well
        .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyAwesomePackage",
            targets: ["MyAwesomePackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.1.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyAwesomePackage",
            dependencies: []),
        .testTarget(
            name: "MyAwesomePackageTests",
            dependencies: ["MyAwesomePackage"]),
    ]
)
