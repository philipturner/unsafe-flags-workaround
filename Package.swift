// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UnsafeFlagsWorkaround",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UnsafeFlagsWorkaround",
            targets: ["UnsafeFlagsWorkaround"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
      .package(url: "https://github.com/pvieito/PythonKit", branch: "master")
//      .package(url: "https://github.com/philipturner/differentiation", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "UnsafeFlagsWorkaround",
            dependencies: [
              .product(name: "PythonKit", package: "PythonKit")
//              .product(name: "_Differentiation", package: "differentiation")
            ]),
        .testTarget(
            name: "UnsafeFlagsWorkaroundTests",
            dependencies: ["UnsafeFlagsWorkaround"]),
    ]
)
