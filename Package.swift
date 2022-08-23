// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "darwell-core",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "DarwellCore",
            type: .dynamic,
            targets: ["DarwellCore"]
        ),
    ],
    targets: [
        .target(
            name: "DarwellCore",
            dependencies: ["galenit_device_api"],
            path: "Sources"
        ),
       .binaryTarget(
            name: "galenit_device_api",
            url: "https://github.com/galen-it/xpcore-ios-package/releases/download/1.1.3/galenit_device_api.xcframework.zip",
            checksum: "500bd0f0fe1c79c8ccfd6a1ec9c67e88fc404ae3e928c992b98762da9d82b7a2"
        )
    ]
)
