# ScrechKit

ScrechKit is a set of SwiftUI modifiers, components, and small platform helpers used across Screch apps

## Installation

Add this package with Swift Package Manager in Xcode with File > Add Packages... or via `Package.swift`

```swift
.package(url: "https://github.com/topscrech/ScrechKit", branch: "main")
```

Importing ScrechKit also exports SwiftUI

```swift
import ScrechKit
```

## View modifiers

### `limitInputLength`

Limits text length while typing

```swift
TextField("Name", text: $name)
    .limitInputLength($name, length: 24)
```

### `onFirstAppear`

Runs a sync or async action once for the view lifecycle

```swift
Text("Welcome")
    .onFirstAppear {
        loadInitialState()
    }

Text("Welcome")
    .onFirstAppear {
        await loadInitialState()
    }
```

### `hapticOn`

Triggers sensory feedback when a value changes

```swift
Button("Save") {
    saveCount += 1
}
.hapticOn(saveCount, as: .success)
```

### `sheet`

Short binding-first sheet helper

```swift
Button("Show") {
    showSheet = true
}
.sheet($showSheet) {
    Text("Sheet Content")
}
```

### `popover`

Short binding-first popover helper

```swift
Button("Info") {
    showPopover = true
}
.popover($showPopover) {
    Text("Popover Content")
}
```

> Current implementation delegates to `sheet(isPresented:content:)`

### `fullScreenCover`

Short binding-first full-screen cover helper

```swift
Button("Open") {
    showFullScreen = true
}
.fullScreenCover($showFullScreen) {
    Text("Full Screen")
}
```

### `inspector`

Short binding-first inspector helper

```swift
Text("Details")
    .inspector($showInspector) {
        InspectorView()
    }
```

### `refreshableTask`

Uses one async action for initial load and pull to refresh

```swift
List(items, id: \.self) {
    Text($0)
}
.refreshableTask {
    await reload()
}
```

### `secondary` and `tertiary`

Applies secondary or tertiary foreground styling

```swift
VStack {
    Text("Secondary")
        .secondary()
    
    Text("Tertiary")
        .tertiary()
}
```

### `redacted`

Applies placeholder redaction when a Boolean is true

```swift
Text("Loading")
    .redacted(isLoading)
```

### `numericTransition`

Applies numeric text content transitions

```swift
Text(score, format: .number)
    .numericTransition(score)
```

### `matchedEffect`

Short alias for `matchedGeometryEffect`

```swift
Image(systemName: "star")
    .matchedEffect("favorite", in: namespace)
```

### `matchedTransitionSource` and `navigationZoomTransition`

Wraps the iOS 18 zoom navigation transition APIs with availability fallbacks

```swift
ThumbnailView()
    .matchedTransitionSource(item.id, in: namespace)

DetailView()
    .navigationZoomTransition(item.id, in: namespace)
```

### `glassyBackground`

Applies a glass or ultra-thin material background, depending on platform availability

```swift
Text("Live")
    .padding()
    .glassyBackground(12)
```

### `frame` and `maxFrame`

Applies equal width and height, or equal max width and max height

```swift
Image(systemName: "bolt")
    .frame(44)

ProgressView()
    .maxFrame(120)
```

### `rotate`

Rotates a view by degrees

```swift
Image(systemName: "arrow.clockwise")
    .rotate(45)
```

### `enableSelection`

Enables text selection where supported

```swift
Text(logOutput)
    .enableSelection()
```

### `detectOrientation`

Updates a binding when device orientation changes on iOS

```swift
ContentView()
    .detectOrientation($orientation)
```

### `translationPresentation`

Presents Apple Translation UI where supported

```swift
Text(message)
    .translationPresentation($showTranslation, text: message)
```

### `help`

Adds help text from a URL

```swift
if let website = URL(string: "https://screch.app") {
    Button("Website") {}
        .help(website)
}
```

### `popTip`

Shows a TipKit popover tip where supported

```swift
Button("Sync") {
    sync()
}
.popTip(syncTip) { action in
    handle(action)
}
```

### `onShortcut`

Adds a hidden keyboard shortcut trigger around a view

```swift
EditorView()
    .onShortcut("s") {
        save()
    }
```

### `sidebarAdaptableTabView`

Uses the sidebar-adaptable tab view style where supported

```swift
TabView {
    Tab("Home", systemImage: "house", value: "home") {
        HomeView()
    }
}
.sidebarAdaptableTabView()
```

### `darkSchemePreferred` and `lightSchemePreferred`

Short helpers for preferred color scheme

```swift
PreviewView()
    .darkSchemePreferred()
```

### `appStoreOverlay`

Presents a StoreKit app overlay on iOS and visionOS

```swift
Button("Show App") {
    showOverlay = true
}
.appStoreOverlay($showOverlay, id: 123456789)
```

### `navSubtitle`

Adds a navigation subtitle where supported

```swift
DetailView()
    .navSubtitle("Updated today")
```

### `ornamentDismissButton`

Adds a dismiss ornament on visionOS

```swift
ContentView()
    .ornamentDismissButton()
```

## Font helpers

### Dynamic type shortcuts

Applies SwiftUI text styles with short modifiers

```swift
Text("Dashboard").largeTitle()
Text("Title").title()
Text("Title 2").title2()
Text("Title 3").title3()
Text("Headline").headline()
Text("Callout").callout()
Text("Subheadline").subheadline()
Text("Footnote").footnote()
Text("Caption").caption()
Text("Caption 2").caption2()
```

### Weighted and designed fonts

Applies text styles with weight and design

```swift
Text("Dashboard")
    .title(.semibold, design: .rounded)
```

### Font design and weight helpers

Short helpers for common font design and weight changes

```swift
Text("Serif").serif()
Text("Rounded").rounded()
Text("Regular").unbold()
Text("Emphasis").semibold()
```

### `fontSize`

Applies a fixed system font size

```swift
Text("Fixed")
    .fontSize(14)
```

### `tightening`

Enables or disables text tightening

```swift
Text("Long title")
    .tightening(true)
```

## View elements

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

### `ConfigureWidgetView`

Shows a compact helper view that explains how to configure a widget

```swift
ConfigureWidgetView(
    "Configure",
    image: Image(systemName: "hammer"),
    lastStep: "**Choose a server** from the list"
)
```

### `LabeledContent`

Adds a convenience initializer with a system image label and text value

```swift
LabeledContent("Status", icon: "checkmark.circle", value: "Ready")
```

### `Text`

Adds a numeric initializer for `Text`

```swift
Text(42)
```

### `imagePicker`

Presents the photo library and returns a selected image

```swift
Button("Pick Image") {
    showImagePicker = true
}
.imagePicker($showImagePicker, image: $selectedImage)
```

### `cameraPicker`

Presents the camera and returns the captured image

```swift
Button("Take Photo") {
    showCamera = true
}
.cameraPicker($showCamera, image: $capturedImage)
```

## Formatting and data helpers

### `formatBytes` and `formatMegaBytes`

Formats byte values as readable file sizes

```swift
Text(formatBytes(1536))
Text(formatMegaBytes(512))
```

### `ConvertibleToByteCount`

Protocol used by `formatBytes` and `formatMegaBytes`

```swift
let bytes = 1536.toByteCount()
```

### `formatISO`

Converts ISO input into a display string and formats dates as ISO strings

```swift
Text(formatISO("2025-01-14T09:41:00+0000"))
let iso = formatISO(Date())
```

### `timeSinceISO`

Builds localized relative time text from an ISO string or date

```swift
Text(timeSinceISO("2025-01-14T09:41:00+0000"))
Text(timeSinceISO(Date()))
```

### `timeFromDate`

Formats a date as `HH:mm`

```swift
Text(timeFromDate(Date()))
```

### `prettyJSON`

Pretty-prints JSON input when possible

```swift
let pretty = prettyJSON("{\"name\":\"Screch\"}")
```

### `getMimeType`

Returns the MIME type for a file URL extension

```swift
let type = getMimeType(URL(fileURLWithPath: "/tmp/avatar.png"))
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

## Platform helpers

### `Pasteboard.copy`

Copies text or URLs to the system pasteboard

```swift
Pasteboard.copy("Copied")
Pasteboard.copy(URL(string: "https://screch.app"))
```

### `Bundle.version` and `Bundle.build`

Reads version and build from the main bundle

```swift
let version = Bundle.version
let build = Bundle.build
```

### `Color`

Adds a hex initializer and raw representable support for storage

```swift
let color = Color(0x00AEEF)
```

### `UniversalImage`

Typealias for `NSImage` on macOS and `UIImage` elsewhere

```swift
let image: UniversalImage
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

### `openInFinder` and `openInFinderOrCreate`

Opens an existing path in Finder or creates a folder before opening it

```swift
openInFinder(rootedAt: folderPath)
openInFinderOrCreate(folderPath)
```

### `grantAchievement`

Reports a Game Center achievement outside debug builds

```swift
grantAchievement("finished_first_workout")
```

### `UNNotificationSound`

Adds convenience helpers for critical notification sounds and ringtone sounds where available

```swift
let sound = UNNotificationSound.critical("alert.caf", volume: 0.8)
```

### `ButtonRole.confirmy`

Uses `.confirm` on newer OS versions and `nil` elsewhere

```swift
Button("Continue", role: .confirmy) {
    continueAction()
}
```

### `delay` and `main`

Legacy convenience helpers for delayed and main-thread execution

```swift
delay {
    refresh()
}

main {
    updateUI()
}
```
