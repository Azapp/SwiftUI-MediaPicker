// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "SwiftUI Media Picker",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "SwiftUI Media Picker",
            targets: ["AppModule"],
            bundleIdentifier: "dev.uwapp.MediaPicker.Demo",
            teamIdentifier: "2H866F22W7",
            displayVersion: "1.0.2",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/UWAppDev/SwiftUI-MediaPicker.git", "0.0.1"..<"1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "MediaPicker", package: "swiftui-mediapicker")
            ],
            path: "App"
        )
    ]
)