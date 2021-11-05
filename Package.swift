// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "WultraDeviceFingerprint",
    platforms: [
        .iOS(.v9),
        .watchOS(.v2),
        .tvOS(.v9),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "WultraDeviceFingerprint", targets: ["WultraDeviceFingerprint"])
    ],
    targets: [
        .binaryTarget(
            name: "WultraDeviceFingerprint",
            url: "https://wultra.jfrog.io/artifactory/device-fingerprint-apple-release/WultraDeviceFingerprint-0.0.2.xcframework.zip",
            checksum: "65bf0c0a42dc2febe5afd66b5e30569e9f543026ba36ca612933352cb7381713")
    ]
)