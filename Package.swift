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
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.30.1/STAIdentify.xcframework.zip",
      checksum: "1789df3552bea0792b721348644efd85fc7f0ab2c2359bf3043b0fba8d844a89"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.30.1/Libraries/iad-2_5_0/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "bb8ece4b46d3d68619219693739b25bb11e5d3776cd5d030a6e7abd6a9148151"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.30.1/Libraries/iad-2_5_0/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "6e7173cea031bcb9b9df2a4c18c2df207f53ef25b8915b1fdcde3a578bec09ee"
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
