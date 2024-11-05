import PackageDescription

let package = Package(
    name: "main project",
    platforms: [
        .macOS(.v10_15) 
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", branch: "main") 
    ],
    targets: [
        .executableTarget(
            name: "tests",
            dependencies: [
                .product(name: "SwiftSyntax", package: "swift-syntax"),
                .product(name: "SwiftParser", package: "swift-syntax"),
            ],
            path: "Sources/tests"
        ),
    ]
)
