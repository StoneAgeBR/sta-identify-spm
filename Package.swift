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
    .package(url: "https://github.com/StoneAgeBR/google-mlkit-swiftpm", from: "5.0.0")
  ],
  targets: [
    .binaryTarget(
      name: "STAIdentify",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.26.0/STAIdentify.xcframework.zip",
      checksum: "f79ea42f238419d702314868546892a6e55e84683f7de7e544554e0de2254123"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.26.0/Libraries/iad-2_4_1/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "663f8e6d41f30938ac164a8f0daa86d9eab44e509540acb68ad650d656ebbf2c"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.26.0/Libraries/iad-2_4_1/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "2e3ef9a8df192f4452d284b7b0a4e3ab3ef7e424248dc3562b072c7ffe248bad"
    ),
    .target(
      name: "STAIdentifySPM",
      dependencies: [
        "STAIdentify",
        "IDLiveFaceCamera",
        "IDLiveFaceIAD",
        .product(name: "MLKitFaceDetection", package: "google-mlkit-swiftpm"),
        .product(name: "MLKitObjectDetection", package: "google-mlkit-swiftpm")
      ]
    ),
  ]
)
