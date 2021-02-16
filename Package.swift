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
            checksum: "01b346af2de15ec4f213beff8f7aaae25593fdedb5ad2603b80a76b43a5e9fab"
        )
    ]
)
