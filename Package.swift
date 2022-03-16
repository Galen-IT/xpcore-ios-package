// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GalenitXpCore",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GalenitXpCore1",
            targets: ["GalenitXpCore2", "galenit_device_api"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GalenitXpCore2",
            dependencies: ["galenit_device_api"],
            path: "Sources"
        ),
        .binaryTarget(
            name: "galenit_device_api",
            url: "https://github.com/Galen-IT/FlowVit_PublicSDKs_iOS/releases/download/v1.0.0/galenit_device_api.xcframework.zip",
            checksum: "875104293d48b43a5115a0c0789da341331e9bcb71b4de9164e49b2aae9842fa"
        )
    ]
)
