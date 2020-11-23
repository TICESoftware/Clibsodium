// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Clibsodium",
    products: [
        .library(name: "Clibsodium", targets: ["Clibsodium"]),
    ],
    targets: [
        .systemLibrary(name: "Clibsodium",
                       pkgConfig: "libsodium",
                       providers: [.apt(["libsodium-dev"]),
                                   .brew(["libsodium"])])
    ]
)
