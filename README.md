# ScrechKit

ScrechKit is a set of SwiftUI modifiers, components, and small platform helpers used across Screch apps

## Installation

Add this package with Swift Package Manager (Xcode: File > Add Packages... or via `Package.swift`)

## Features

### `limitInputLength`
Limits text length while typing

```swift
TextField("Name", text: $name)
    .limitInputLength($name, length: 24)
```

### `onFirstAppear`
Runs an action once for the view lifecycle

```swift
Text("Welcome")
    .onFirstAppear { loadInitialState() }
```

### `hapticOn`
Triggers sensory feedback when a value changes

```swift
Button("Save") { saveCount += 1 }
    .hapticOn(saveCount, as: .success)
```

### `sheet`
Short binding-first sheet helper

```swift
Button("Show") { showSheet = true }
    .sheet($showSheet) {
        Text("Sheet Content")
    }
```

### `popover`
Short binding-first popover helper

```swift
Button("Info") { showPopover = true }
    .popover($showPopover) {
        Text("Popover Content")
    }
```

### `fullScreenCover`
Short binding-first full-screen cover helper

```swift
Button("Open") { showFullScreen = true }
    .fullScreenCover($showFullScreen) {
        Text("Full Screen")
    }
```

### `refreshableTask`
Uses one async action for initial load and pull to refresh

```swift
List(items, id: \.self) { Text($0) }
    .refreshableTask {
        await reload()
    }
```

### `secondary` and `tertiary`
Applies secondary or tertiary foreground styling

```swift
VStack {
    Text("Secondary").secondary()
    Text("Tertiary").tertiary()
}
```

### `SFButton`
Creates a simple SF Symbol button

```swift
SFButton("gearshape") {
    openSettings()
}
```

### `ListButton`
Creates a list row styled as an action button

```swift
ListButton("Manage", icon: "slider.horizontal.3", actionIcon: "chevron.right") {
    openSettings()
}
```

### `ListLink`
Creates a list row navigation link

```swift
ListLink("Profile", icon: "person.crop.circle") {
    ProfileView()
}
```

### `PulseCircle`
Shows an animated pulsing status dot

```swift
PulseCircle(.green, size: 10)
```

### `imagePicker`
Presents the photo library and returns a selected image

```swift
Button("Pick Image") { showImagePicker = true }
    .imagePicker($showImagePicker, image: $selectedImage)
```

### `cameraPicker`
Presents the camera and returns the captured image

```swift
Button("Take Photo") { showCamera = true }
    .cameraPicker($showCamera, image: $capturedImage)
```

### `formatBytes` and `formatMegaBytes`
Formats byte values as readable file sizes

```swift
Text(formatBytes(1536))
Text(formatMegaBytes(512))
```

### `formatISO`
Converts ISO input into a display string

```swift
Text(formatISO("2025-01-14T09:41:00+0000"))
```

### `timeSinceISO`
Builds localized relative time text from an ISO date

```swift
Text(timeSinceISO("2025-01-14T09:41:00+0000"))
```

### `Pasteboard.copy`
Copies text or URLs to the system pasteboard

```swift
Pasteboard.copy("Copied")
```

### `getMimeType`
Returns the MIME type for a file URL extension

```swift
let type = getMimeType(URL(fileURLWithPath: "/tmp/avatar.png"))
```

### `prettyJSON`
Pretty-prints JSON input when possible

```swift
let pretty = prettyJSON("{\"name\":\"Screch\"}")
```

### `applyPercentEncoding`
Percent-encodes a string for URL path usage

```swift
let encoded = "hello world".applyPercentEncoding()
```

### `FormatStyle` helpers
Adds percent and fraction formatting shortcuts

```swift
Text(0.845, format: .percentRounded(1))
Text(12.345, format: .fractionDigits(2))
```

### Font helpers (`title`, `headline`, and more)
Applies SwiftUI font styles with short modifiers

```swift
Text("Dashboard")
    .title(.semibold, design: .rounded)
```

### `Bundle.version` and `Bundle.build`
Reads version and build from the main bundle

```swift
let version = Bundle.version
let build = Bundle.build
```

### `openSettings`
Opens your app settings page

```swift
openSettings()
```

### `openHealthApp`
Opens Apple Health on iOS

```swift
openHealthApp()
```

## Notes

- Availability varies by API so check each `@available` annotation
- DocC stubs live in `ScrechKit.docc`
