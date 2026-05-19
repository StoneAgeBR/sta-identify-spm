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
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.29.1/STAIdentify.xcframework.zip",
      checksum: "21973524c04538b4bbce83c8a2474af7a2e3da2ab366d96c58e4bb4ee77f8b72"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.29.1/Libraries/iad-2_5_0/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "f051143c2cf884eac4d3ae7840cd055404a4ffdaf1114e72b9c4ee673c73bbb4"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.29.1/Libraries/iad-2_5_0/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "e23f2fcbfcc1a9b6426c20fc6e0a5bb665d4db59d69a6f896fc0b9cbea10dfbb"
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
