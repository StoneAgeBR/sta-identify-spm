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
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.28.0/STAIdentify.xcframework.zip",
      checksum: "b4c0f11d5620031f5e7d4f36453c199c0d960726b9e812ec3393296c8267bb10"
    ),
    .binaryTarget(
      name: "IDLiveFaceCamera",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.28.0/Libraries/iad-2_5_0/Frameworks/IDLiveFaceCamera.xcframework.zip",
      checksum: "ef63ac76f2dcfd55c63fcedb29dc85c8f9e3eea27bf1911f0a78dc618fcf859e"
    ),
    .binaryTarget(
      name: "IDLiveFaceIAD",
      url: "https://identify-pods.stoneage.com.br/STAIdentify/STAIdentify_1.28.0/Libraries/iad-2_5_0/Frameworks/IDLiveFaceIAD.xcframework.zip",
      checksum: "8bd47e31d041ff93d36dcb01caedeeac1a5a268ba2723b87b9db8dbcc39f0c0d"
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
