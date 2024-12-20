// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AULibrary",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AULibrary", targets: ["AULibrary"]),
        .library(name: "AULibraryManager", targets: ["AULibraryManager"])
    ],
    dependencies: [
        .package(
          url: "https://github.com/SnapKit/SnapKit",
          "5.0.1" ..< "5.7.1"
        ),
        .package(
          url: "https://github.com/onevcat/Kingfisher",
          "8.0.0" ..< "8.1.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "AULibrary",
            url:"https://firebasestorage.googleapis.com/v0/b/autotoll-407b9.appspot.com/o/AULibrary%2F1.0.3%2FAULibrary.xcframework.zip?alt=media&token=c6b7ba21-a698-400b-a49d-f41aa2637c64",
            checksum: "8c82af63190339fab8f5d4d10be0f161f342741de360c12df76713bec2b72692"),
        
        .target(name: "AULibraryManager",dependencies: ["SnapKit","Kingfisher"])
    ]
)
