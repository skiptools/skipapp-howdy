// swift-tools-version: 6.1
// This is a Skip (https://skip.tools) package.
import PackageDescription

let package = Package(
    name: "skipapp-howdy",
    defaultLocalization: "en",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "HowdySkip", type: .dynamic, targets: ["HowdySkip"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "1.6.35"),
        .package(url: "https://source.skip.tools/skip-fuse-ui.git", from: "1.10.5")
    ],
    targets: [
        .target(name: "HowdySkip", dependencies: [
            .product(name: "SkipFuseUI", package: "skip-fuse-ui")
        ], resources: [.process("Resources")], plugins: [.plugin(name: "skipstone", package: "skip")]),
    ]
)
