# TopOn - iOS VPN Network Config Adapter (VPNConfig)

The TopOn VPN Network Config (VPNConfig) adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.60+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/topon-packages/TPNMediationVPNConfigAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `TPNMediationVPNConfigAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/topon-packages/TPNMediationVPNConfigAdapter_SPM.git",
        exact: "x.x.x"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/topon-packages/TPNiOS_SPM) (>= 6.5.60)

The Core SDK is resolved and linked automatically when this package is added.

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
