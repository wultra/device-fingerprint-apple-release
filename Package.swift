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
            url: "https://wultra.jfrog.io/artifactory/device-fingerprint-apple-spm/WultraDeviceFingerprint-1.2.2.xcframework.zip",
            checksum: "4b6fd3d5d83df375c7070316cdcfde2cc1b66a5ae0a0193e4baf8f8c7cc1fc01")
    ]
)