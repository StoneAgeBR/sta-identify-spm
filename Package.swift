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
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.30.0/STAIdentify.xcframework.zip",
      checksum: "5761873a233edc6980444155d2f7387a163d5d65d9cbaa1df01e801353369e15"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.30.0/Libraries/iad-2_5_0/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "4d82f55abde80ea10fc4b3d24c44c65aa3315d9a901ef5011b527cb206ad1720"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.30.0/Libraries/iad-2_5_0/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "384d6ed7f074703cfe6778d2e309924c6491ca61c3174f965a14fd55da131e98"
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
