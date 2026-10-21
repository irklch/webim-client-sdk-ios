// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "webim-client-sdk-ios",
    products: [
        .library(name: "WebimMobileSDK", targets: ["WebimMobileSDK"])
    ],
    dependencies: [
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", exact: "0.15.0")
    ],
    targets: [
        .target(
            name: "WebimMobileSDK",
            dependencies: [.product(name: "SQLite", package: "SQLite.swift")],
            path: "WebimMobileSDK",
            resources: [.copy("PrivacyInfo.xcprivacy")]
        )
    ]
)
