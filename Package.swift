// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "STRFTimeFormatter",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "STRFTimeFormatter",
            targets: ["STRFTimeFormatter"]),
    ],
    targets: [
        .target(
            name: "STRFTimeFormatter",
            path: "Sources",
            publicHeadersPath: "include"
        ),
        .testTarget(
            name: "STRFTimeFormatterTests",
            dependencies: ["STRFTimeFormatter"],
            path: "Tests"
        ),
    ],
    cLanguageStandard: .c11
) 