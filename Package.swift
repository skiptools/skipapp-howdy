// swift-tools-version: 6.0
// This is a Skip (https://skip.tools) package.
import PackageDescription

let package = Package(
    name: "skipapp-howdy",
    defaultLocalization: "en",
    platforms: [.iOS(.v17), .macOS(.v14), .tvOS(.v17), .watchOS(.v10), .macCatalyst(.v17)],
    products: [
        .library(name: "HowdySkip", type: .dynamic, targets: ["HowdySkip"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "1.5.21"),
        .package(url: "https://source.skip.tools/skip-fuse-ui.git", "0.15.6"..<"2.0.0")
    ],
    targets: [
        .target(name: "HowdySkip", dependencies: [
            .product(name: "SkipFuseUI", package: "skip-fuse-ui")
        ], plugins: [.plugin(name: "skipstone", package: "skip")]),
    ]
)
