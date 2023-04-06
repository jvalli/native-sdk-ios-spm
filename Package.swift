// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenTok",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OpenTok",
            targets: ["OpenTok", "OpenTokDependencies"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        /*
        .binaryTarget(name: "OpenTok",
                      url: "https://s3.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/OpenTok-iOS-2.24.2.zip",
                      checksum: "cde437e6edc23f1622de3754f9ddf0728c41f3d4667cbfebbb440eb21547769f"),
        */
        /*
        .binaryTarget(name: "OpenTok",
                      url: "https://s3.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/OpenTok-iOS-2.25.0.zip",
                      checksum: "21bd6f7bf300b45080a2d0176905430470692778bb6df8309b327d951e5c2bbc"),
         */
        .binaryTarget(name: "OpenTok",
                      path: "OpenTok/OpenTok.xcframework"),
        .target(name: "OpenTokDependencies",
                path: "Sources",
                linkerSettings: [
                    .linkedFramework("Network"),
                    .linkedFramework("VideoToolbox"),
                    .linkedLibrary("c++")
                ]),
        .testTarget(name: "OpenTokTests",
                    dependencies: ["OpenTok"])
    ]
)
