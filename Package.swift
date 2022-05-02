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
            url: "https://github.com/galen-it/xpcore-ios-package/releases/download/1.0.4/galenit_device_api.xcframework.zip",
            checksum: "ec6cae0caf009bc2ade1b4d15315e7f2417c24ed5988b1cf3dbfb0d88cfe64de"
        )
    ]
)
