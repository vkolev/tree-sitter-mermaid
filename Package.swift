import PackageDescription

let package = Package(
    name: "TreeSitterMermaid",
    platforms: [.macOS(.10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterMermaid", targets: ["TreeSitterMermaid"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterMermaid",
            path: ".",
            exclude: [
                "binding.gyp",
                "bindings",
                "Cargo.toml",
                "Cargo.lock"
                "corpus",
                "grammer.js",
                "LICENSE",
                "Makefile",
                "package.json",
                "README.md",
                "src/grammer.json",
                "src/node-types.json",
                "target",
            ],
            sources: [
                "src/parser.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
    ]
)