# Installation

## Cocoapods 

The library is distributed via Cocoapods private repository. If you're not using cocoapods in your project, visit [usage guide](https://guides.cocoapods.org/using/using-cocoapods.html).

1. Install cocoapods-art plugin to be able to access our private repository:
   ```
   gem install cocoapods-art
   ```

2. Create (or append to if already exists) `~/.netrc` file in your home directory with the following credentials you were provided alongside this document:
   ```
   machine wultra.jfrog.io
         login [name@yourcompany.com]
         password [password]
   ``` 

3. Synchronize the remote repository locally:
   ```
   pod repo-art add device_fingerprint_apple https://wultra.jfrog.io/artifactory/api/pods/device-fingerprint-apple
   ```
   To synchronize the repository and receive new versions in the future, use the following command:
   ```
   pod repo-art update device_fingerprint_apple
   ```

4. To enable cocoapods-art plugin in your project `Podfile`, add the following code somewhere at the beginning of the file:
   ```
   plugin 'cocoapods-art', :sources => [
       'device_fingerprint_apple'
   ]
   ```

5. Add pod to your `Podfile`:
   ```
   pod 'WultraDeviceFingerprint'
   ```

6. Run `pod install` in your project dictionary to make the `WultraDeviceFingerprint` framework available in your project.

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
   https://github.com/wultra/device-fingerprint-apple-spm
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
           .package(name: "WultraDeviceFingerprint", url: "https://github.com/wultra/device-fingerprint-apple-spm", .from("1.2.1"))
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
