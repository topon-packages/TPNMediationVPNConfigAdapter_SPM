// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationVPNConfigAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TPNMediationVPNConfigAdapter",
            targets: ["TPNMediationVPNConfigAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkVPNConfigAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkVPNConfigAdapter/6.5.91/AnyThinkVPNConfigAdapter-6.5.91.zip",
            checksum: "47ae25bb56bd4f7e6e53dd6990e17640be8f8a24f7fffbe7a4e669da62138d99"
        ),
        .target(
            name: "TPNMediationVPNConfigAdapterTarget",
            dependencies: [
                "AnyThinkVPNConfigAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM")
            ],
            path: "Sources/TPNMediationVPNConfigAdapterTarget"
        )
    ]
)