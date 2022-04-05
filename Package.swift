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
            url: "https://github.com/galen-it/xpcore-ios-package/releases/download/1.0.0/galenit_device_api.xcframework.zip",
            checksum: "0f29be7ead4a387b76f07f37cea585386e03b4c9a9e53291f18afef752882fe1"
        )
    ]
)
