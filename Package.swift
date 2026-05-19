// swift-tools-version: 6.3.2
import PackageDescription

let package = Package(
    name: "ScrechKit",
    products: [
        .library(name: "ScrechKit", targets: ["ScrechKit"])
    ],
    targets: [
        .target(name: "ScrechKit"),
        .testTarget(name: "Tests", dependencies: ["ScrechKit"])
    ]
)
