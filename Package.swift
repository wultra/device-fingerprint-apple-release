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
            url: "https://wultra.jfrog.io/artifactory/device-fingerprint-apple-release/WultraDeviceFingerprint-1.4.0.xcframework.zip",
            checksum: "217a5144225b48dc93314699db5aa61b38c84810fdc0639f694f788b113e4517")
    ]
)