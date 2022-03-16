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
            name: "GalenitXpCore",
            targets: ["GalenitXpCore111"]),
    ],
    targets: [
        .target(
            name: "GalenitXpCore111",
            dependencies: ["CoreUtils"],
            path: "Sources"
        ),
        .binaryTarget(
            name: "CoreUtils",
            url: "https://github.com/Galen-IT/FlowVit_PublicSDKs_iOS/releases/download/v1.0.0/CoreUtils.xcframework.zip",
            checksum: "9573e561e8f07761290e11d57ca58269a1ea5e74355bb2feb6e1ef1cad45ab77"
        ),
       .binaryTarget(
            name: "galenit_device_api",
            url: "https://github.com/Galen-IT/FlowVit_PublicSDKs_iOS/releases/download/v1.0.0/galenit_device_api.xcframework.zip",
            checksum: "875104293d48b43a5115a0c0789da341331e9bcb71b4de9164e49b2aae9842fa"
        )
    ]
)
