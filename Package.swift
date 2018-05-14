// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ANSIEscapeCode",
    products: [
        .library(
            name: "ANSIEscapeCode",
            targets: ["ANSIEscapeCode"]),
        .executable(
            name: "logo",
            targets: ["logo"]),
    ],
    targets: [
        .target(
            name: "ANSIEscapeCode"),
        .target(
            name: "logo",
            dependencies: ["ANSIEscapeCode"]),
    ]
)
