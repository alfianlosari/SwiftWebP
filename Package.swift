// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftWebP",
    platforms: [.iOS(.v13), .macCatalyst(.v13)],
    products: [
        .library(
            name: "SwiftWebP",
            targets: ["SwiftWebP"]),
        .library(
            name: "YYImageLib",
            targets: ["YYImageLib"]),
    ],
    dependencies: [
         .package(url: "https://github.com/SDWebImage/libwebp-Xcode", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "SwiftWebP",
            dependencies: [
                "YYImageLib",
            ]),
        .target(
            name: "YYImageLib",
            dependencies: [
                .product(name: "libwebp", package: "libwebp-Xcode")
            ])
    ]
)
