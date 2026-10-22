# ScrechKit

ScrechKit is a set of SwiftUI modifiers, components, and small platform helpers used across Screch apps

## Supported platforms
- iOS / iPadOS 13+
- macOS 10.15+
- tvOS 13+
- watchOS 9+
- visionOS 1+

## Installation

Add this package with Swift Package Manager in Xcode with File > Add Packages... or via `Package.swift`

```swift
.package(url: "https://github.com/topscrech/ScrechKit", branch: "main")
```

## Usage

Importing ScrechKit also imports SwiftUI

```swift
import ScrechKit
```

See all available view modifiers, methods, and examples in the [wiki](https://github.com/TopScrech/ScrechKit/wiki)

### Glass backgrounds

Use `glassyBackground` for regular glass on supported systems and ultra-thin material on older systems and visionOS

```swift
.glassyBackground()
.glassyBackground(12)
.glassyBackground(tint: .green.opacity(0.3))
.glassyBackground(in: .circle, tint: .red.opacity(0.5))
.glassyBackground(in: .capsule, interactive: true)
.glassyBackground(in: .rect(cornerRadius: 14), tint: .blue.opacity(0.25))
```

The default shape is a capsule on every platform, including the material fallback
Tint overlays the material fallback using the supplied color and opacity
Interaction is enabled only for native glass; the material fallback remains static
Existing calls with an optional corner radius remain supported
