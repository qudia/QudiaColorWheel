// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package: Package = Package(
    name: "QudiaColorWheel",
    platforms: [
        .watchOS(.v10)
    ],
    products: [
        .library(
            name: "QudiaColorWheel",
            targets: ["QudiaColorWheel"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "QudiaColorWheel",
            dependencies: [],
            path: "QudiaColorWheel",
            sources: ["Classes"],
            resources: [
                .process("Assets")
            ]
        )
    ]
)
