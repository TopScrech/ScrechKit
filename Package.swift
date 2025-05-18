// swift-tools-version: 5.10
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
        ),
        .testTarget(
            name: "Tests",
            dependencies: ["ScrechKit"]
        )
    ]
)
