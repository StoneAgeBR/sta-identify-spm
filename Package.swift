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
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.24.0/STAIdentify.xcframework.zip",
      checksum: "f36b09dd2475fa667470dbbcaabbf3ae38ae91978f183a1a60828800319ec8bc"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.24.0/Libraries/iad-1_7_3/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "ace84c87c5c1d0c4080b178587d20b5b7d3ceb78daa3c68cf8364950ade9d93f"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.24.0/Libraries/iad-1_7_3/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "e36eb8e049d0d3d03c4e6fc88edde1fdda02263dbff095fa72191c3a703508d5"
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
