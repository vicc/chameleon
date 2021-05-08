// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Chameleon",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "Chameleon",
            targets: ["Chameleon"]),
        .library(
            name: "ChameleonSwift",
            targets: ["ChameleonSwift"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Chameleon",
            path:"Pod/Classes/Objective-C"
        ),
//        .target(
//            name: "Chameleons",
//           // dependencies: ["Chameleon/Default"],
//            path:"Chameleon", resources: [.process("Chameleon/Info.plist")]
//        ),
        .target(
            name: "ChameleonSwift",
            dependencies: ["Chameleon"],
            path:"Pod/Classes/Swift"
        )
    ]
)
