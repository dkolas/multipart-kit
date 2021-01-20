// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "multipart-kit",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "MultipartKit", targets: ["MultipartKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.2.0"),
    ],
    targets: [
        .target(name: "CMultipartParser"),
        .target(name: "MultipartKit", dependencies: [
            "NIO",
            "NIOHTTP1",
            "CMultipartParser",
        ]),
        .testTarget(name: "MultipartKitTests", dependencies: ["MultipartKit"]),
    ]
)
