# Installation

## Cocoapods 

The library is distributed via Cocoapods private repository. If you're not using cocoapods in your project, visit [usage guide](https://guides.cocoapods.org/using/using-cocoapods.html).

1. Create (or append to if already exists) `~/.netrc` file in your home directory with the following credentials you were provided alongside this document:
   ```
   machine wultra.jfrog.io
         login [name@yourcompany.com]
         password [password]
   ``` 

2. Add pod to your `Podfile`:
   ```
   pod 'WultraDeviceFingerprint', :git => 'https://github.com/wultra/device-fingerprint-apple-release.git', :tag => 'x.y.z'
   ```
   Where `x.y.z` is an exact version of the library. You can obtain the list of available versions at [releases page](https://github.com/wultra/device-fingerprint-apple-release/tags).

3. Run `pod install` in your project dictionary to make the `WultraDeviceFingerprint` framework available in your project.

## Swift Package Manager

The library is distributed also as a package for Swift Package Manager:
   
1. Create (or append to if already exists) `~/.netrc` file in your home directory with the following credentials you were provided alongside this document:
   ```
   machine wultra.jfrog.io
         login [name@yourcompany.com]
         password [password]
   ```

2. Add the following repository as a dependency into your project:
   ```
   https://github.com/wultra/device-fingerprint-apple-release
   ```
   You can use Xcode's dedicated user interface to do this or add the dependency manually, for example:
   ```swift
   // swift-tools-version:5.4

   import PackageDescription

   let package = Package(
       name: "YourLibrary",
       products: [
           .library(
               name: "YourLibrary",
               targets: ["YourLibrary"]),
       ],
       dependencies: [
           .package(name: "WultraDeviceFingerprint", url: "https://github.com/wultra/device-fingerprint-apple-release.git", .upToNextMajor(from: "1.3.0"))
       ],
       targets: [
           .target(
               name: "YourLibrary",
               dependencies: ["WultraDeviceFingerprint"])
       ]
   )
   ```
   
## Supported operating systems

The library is supported on the following operating systems:

- **iOS** 9.0+
- **tvOS** 9.0+
- **watchOS** 2.0+
- **macOS** 10.15+


## Read Next

- [Usage](Usage.md)
