// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary2",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyLibrary2",
            targets: ["MyLibrary2"]),
        .library(
            name: "ReusableButton",
            targets: ["ReusableButton"]),
        .library(
            name: "ReusableText",
            targets: ["ReusableText"]),
        .library(
            name: "MapView",
            targets: ["MapView"]),
        .library(
            name: "LibraryFont",
            targets: ["MapView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyLibrary2",
            dependencies: []),
        .testTarget(
            name: "MyLibrary2Tests",
            dependencies: ["MyLibrary2"]),
        .target(
            name: "ReusableButton",
            dependencies: []),
        .target(
            name: "ReusableText",
            dependencies: []),
        .target(
            name: "MapView",
            dependencies: []),
        .target(
            name: "LibraryFont",
            dependencies: [],
            resources: [.process("Fonts")]
        ),
    ]
)
