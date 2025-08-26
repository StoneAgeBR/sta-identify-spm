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
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.26.0-rc.1/STAIdentify.xcframework.zip",
      checksum: "777077cd1b09bd10e92515b65104782ea94076aa58deea23088860e0331a4cce"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.26.0-rc.1/Libraries/iad-2_4_1/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "c76632f4301dab8ecb09221979254286e3596feb18460e3e68e769c4574d2667"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.26.0-rc.1/Libraries/iad-2_4_1/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "5c896dbdf6fc1ae6aad3e623c315cdb6053703a8cc5196bfc6fbd8535af088ec"
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
