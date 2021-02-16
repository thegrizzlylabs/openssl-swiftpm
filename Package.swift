// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "OpenSSL",
    platforms: [
        .macOS(.v10_10), .iOS(.v9)
        ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "OpenSSL",
            targets: ["OpenSSL"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OpenSSL",
            url: "https://github.com/hantu85/openssl-swiftpm/releases/download/1.1.180/OpenSSL.xcframework.zip",
            checksum: "9b932642e291fa7772cab7ffbedd296da327652854c4d16e8c5b2313f6abd6e0"
        )
    ]
)
