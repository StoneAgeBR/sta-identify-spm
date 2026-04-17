// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "STAIdentifySPM",
  defaultLocalization: "pt-BR",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "STAIdentifySPM",
      targets: ["STAIdentifySPM"])
  ],
  targets: [
    .binaryTarget(
      name: "STAIdentify",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.31.0/STAIdentify.xcframework.zip",
      checksum: "224c91b054482e7d9d78d5a4b646cbea453d060e973c0d38e0dd702fd56c3179"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.31.0/Libraries/iad-2_5_0/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "a598514906d071125ba382e127ce21195323e1ecd925626e9e61cd5e51b07d37"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.31.0/Libraries/iad-2_5_0/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "09b97cd60669701593d982c36ab50df56197d86d3ecb8648b45d9864aa87cd0d"
    ),
    .target(
      name: "STAIdentifySPM",
      dependencies: [
        "STAIdentify",
        "IDLiveFaceCamera",
        "IDLiveFaceIAD"
      ]
    ),
  ]
)
