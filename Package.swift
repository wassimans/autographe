// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "autographe",
    platforms: [.macOS(.v14)],
    products: [
        .executable(name: "autographe", targets: ["AutographeUI"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftlang/swift-markdown.git",
            from: "0.5.0"
        ),
        .package(
            url: "https://github.com/sindresorhus/Defaults.git",
            from: "7.0.0"
        ),
    ],
    targets: [
        .target(
            name: "AutographeCore",
            dependencies: [
                .product(name: "Markdown", package: "swift-markdown")
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .executableTarget(
            name: "AutographeUI",
            dependencies: [
                "AutographeCore",
                .product(name: "Defaults", package: "Defaults"),
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "AutographeCoreTests",
            dependencies: ["AutographeCore"]
        ),
    ]
)
