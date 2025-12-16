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
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.27.0/STAIdentify.xcframework.zip",
      checksum: "1573fe5282a34f0c93968686034b358128905d392c2e3a61bf4f0299def259dc"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.27.0/Libraries/iad-2_4_1/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "0f890f12ad2ddd3180fed5d862ac20d3dc58d3047394eb0100865e1e165e42a3"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.27.0/Libraries/iad-2_4_1/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "fec4302c8fce511577eda604a52b48ab680383c68590856e9627823144f91734"
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
