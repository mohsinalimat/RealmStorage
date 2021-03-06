// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RealmStorage",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "RealmStorage",
            targets: ["RealmStorage"]
        )
    ],
    dependencies: [
        .package(
            name: "Realm",
            url: "https://github.com/realm/realm-cocoa.git",
            .branch("master")
        ),
        .package(
            name: "Sourcery",
            url: "https://github.com/krzysztofzablocki/Sourcery.git",
            from: "1.0.0"
        ),
        .package(
            name: "KeychainSwift",
            url: "https://github.com/evgenyneu/keychain-swift.git",
            from: "19.0.0"
        )
    ],
    targets: [
        .target(
            name: "RealmStorage",
            dependencies: [
                .product(
                    name: "Realm",
                    package: "Realm"
                ),
                .product(
                    name: "RealmSwift",
                    package: "Realm"
                ),
                .product(
                    name: "KeychainSwift",
                    package: "KeychainSwift"
                )
            ]
        ),
        .testTarget(
            name: "RealmStorageTests",
            dependencies: [
                "RealmStorage",
                .product(
                    name: "Realm",
                    package: "Realm"
                ),
                .product(
                    name: "RealmSwift",
                    package: "Realm"
                )
            ]
        )
    ]
)
