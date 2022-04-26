// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "galenit-xpcore",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GalenitXpCore",
            targets: ["GalenitXpCore"]
        ),
    ],
    targets: [
        .target(
            name: "GalenitXpCore",
            dependencies: ["galenit_device_api"],
            path: "Sources"
        ),
       .binaryTarget(
            name: "galenit_device_api",
            url: "https://github.com/galen-it/xpcore-ios-package/releases/download/1.0.3/galenit_device_api.xcframework.zip",
            checksum: "00e0b7760280803060d501b90c9c601bb0738d7ca971d7eeb3798961a85354fd"
        )
    ]
)
