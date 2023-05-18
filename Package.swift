// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SwiftUIExtension",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "SwiftUIExtension",
            targets: ["SwiftUIExtension"]),
    ],
    targets: [
        .target(
            name: "SwiftUIExtension",
            dependencies: [
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftUIExtensionTests",
            dependencies: ["SwiftUIExtension"]
         ),
    ],
    swiftLanguageVersions: [ .version("5.1") ]
)
