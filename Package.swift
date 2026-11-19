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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkVPNConfigAdapter/10.0.0/AnyThinkVPNConfigAdapter-10.0.0.zip",
            checksum: "ae65c98a34fc4bd0f9125d4f5133e3180ee2b5c337ff5685890c72ed6a773df6"
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