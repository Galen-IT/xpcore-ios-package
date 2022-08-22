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
            url: "https://github.com/galen-it/xpcore-ios-package/releases/download/1.1.0/galenit_device_api.xcframework.zip",
            checksum: "0e4ae2baf25adc6d3ef1aa7bd1c5bfddcc83f4784507082d1035744d66648b56"
        )
    ]
)
