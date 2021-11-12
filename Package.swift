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
            url: "https://wultra.jfrog.io/artifactory/device-fingerprint-apple-release/WultraDeviceFingerprint-1.3.1.xcframework.zip",
            checksum: "0baec6b36a164c47f67e56c06cd3085518faddfdc482a03bfdd394a7a782079b")
    ]
)