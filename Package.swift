// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ScrechKit",
    products: [
        .library(
            name: "ScrechKit",
            targets: ["ScrechKit"]
        )
    ],
    targets: [
        .target(
            name: "ScrechKit",
            dependencies: []
        )
    ]
)
