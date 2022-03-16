// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "galenit_device_api",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "galenit_device_api",
            targets: ["galenit_device_api"]),
    ],
    targets: [
//        .target(
//            name: "GalenitXpCore2",
//            dependencies: ["galenit_device_api"],
//            path: "Sources"
//        ),
        .binaryTarget(
            name: "galenit_device_api",
            url: "https://github.com/Galen-IT/FlowVit_PublicSDKs_iOS/releases/download/v1.0.0/galenit_device_api.xcframework.zip",
            checksum: "875104293d48b43a5115a0c0789da341331e9bcb71b4de9164e49b2aae9842fa"
        )
    ]
)
