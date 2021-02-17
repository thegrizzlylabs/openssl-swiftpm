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
            type: .static,
            targets: ["OpenSSL", "OpenSSL-local"]
        )
    ],
    targets: [
        .target(name: "OpenSSL-local"),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://github.com/hantu85/openssl-swiftpm/releases/download/1.1.171/OpenSSL.xcframework.zip",
            checksum: "da438351ed35625802c369a65476b21c7d49bf4a30cce4f91285f925f42bf5b9"
        )
    ]
)
