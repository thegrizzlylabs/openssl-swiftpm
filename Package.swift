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
            checksum: "0ed0989f1f179f2fdcf94ac080ebea2cc86c43da6a05e6790262a36366d5dc5b"
        )
    ]
)
