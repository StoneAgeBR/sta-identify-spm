// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "STAIdentifySPM",
  defaultLocalization: "pt-BR",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "STAIdentifySPM",
      targets: ["STAIdentifySPM"])
  ],
  dependencies: [
    .package(url: "https://github.com/StoneAgeBR/google-mlkit-swiftpm", from: "5.0.0"),
    .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.0.0")
  ],
  targets: [
    .binaryTarget(
      name: "STAIdentify",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.23.3/STAIdentify.xcframework.zip",
      checksum: "7790ab02c91eec77eb3607171ef4e1a4a9a8a1f6b0f5c425afdd0107e1fda964"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.23.3/Libraries/iad-1_7_3/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "ebef0615ea8223d4033011e8bad4d1d040020aa14872fad04136ebbf2567149f"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.23.3/Libraries/iad-1_7_3/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "c4bf1ac6782e9bf1f5623a3a011cbddc728d270604fde556e0d67ac8df3d2096"
    ),
    .target(
      name: "STAIdentifySPM",
      dependencies: [
        "STAIdentify",
        "IDLiveFaceCamera",
        "IDLiveFaceIAD",
        .product(name: "MLKitFaceDetection", package: "google-mlkit-swiftpm"),
        .product(name: "MLKitObjectDetection", package: "google-mlkit-swiftpm"),
        .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
      ]
    ),
  ]
)
