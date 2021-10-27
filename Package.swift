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
            url: "https://wultra.jfrog.io/artifactory/device-fingerprint-apple-spm/WultraDeviceFingerprint-1.2.1.xcframework.zip",
            checksum: "0a7d1da34f47a0af6f7ef1b197caa40d04d52bf10795ce9b55914857c989f7e3")
    ]
)