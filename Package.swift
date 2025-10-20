// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "TensorFlowLiteSwift",
    products: [
        .library(
            name: "TensorFlowLiteSwift",
            targets: ["TensorFlowLite"]),
    ],
    dependencies: [
        .package(url: "https://github.com/exitek-io/TensorFlowLiteC.git", revision: "a5feb92caf5d06fb10c9a4437d26662b8984b38a"),
    ],
    targets: [
        .target(
            name: "TensorFlowLite",
            dependencies: ["TensorFlowLiteC"]),
    ]
)
