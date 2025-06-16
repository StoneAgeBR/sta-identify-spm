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
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.25.0/STAIdentify.xcframework.zip",
      checksum: "7a03b8f3a81172e2c8db49af67a1d3279e0ed2753e47990b51f5cbf9604b29ef"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.25.0/Libraries/iad-1_7_3/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "9711ed54da3a0c2b4b1ad7119beafd418314ae707d64d8584ee0679685246687"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.25.0/Libraries/iad-1_7_3/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "b2b9c9ce5e795cf42c933b5012f954d1c1b078cdefedbb3dd2c957d62b5ac877"
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
