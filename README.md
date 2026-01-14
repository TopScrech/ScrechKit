# ScrechKit

ScrechKit is a grab-bag of SwiftUI view modifiers, components, and platform helpers used across Screch apps.

## Contents

- View modifiers for common SwiftUI patterns like input limiting, first-appear actions, sheet/popover helpers, and haptics.
- View elements like `AsyncButton`, `SFButton`, `PulseButton`, `ListButton`, `ListLink`, and pickers.
- Formatting helpers for bytes and ISO dates.
- Small utilities like pasteboard copy, mime type lookup, JSON pretty printing, and settings/Health app openers.
- Extensions for fonts, colors, format styles, and percent encoding.

## Installation

Add this package with Swift Package Manager (Xcode: File > Add Packages... or via `Package.swift`). Use a local path or the repo URL where you host ScrechKit.

## Usage

```swift
import SwiftUI
import ScrechKit

struct ExampleView: View {
    @State private var name = ""
    @State private var saveCount = 0

    var body: some View {
        VStack(spacing: 12) {
            TextField("Name", text: $name)
                .limitInputLength($name, length: 24)

            Button("Save") { saveCount += 1 }
                .hapticOn(saveCount, as: .success)

            Text(formatBytes(1536))
                .onFirstAppear { print("ready") }
        }
        .padding()
    }
}
```

```swift
Pasteboard.copy("Copied!")
```

## Notes

- Availability varies by API; check the `@available` annotations for platform and OS version requirements.
- DocC stubs live in `ScrechKit.docc` if you want to expand the docs.
