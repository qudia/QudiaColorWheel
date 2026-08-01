<img src="https://raw.githubusercontent.com/qudia/QudiaColorWheel/main/readme_images/appicon.png" width="120">

# QudiaColorWheel

[![Swift Package Manager](https://img.shields.io/badge/SPM-compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg?style=flat)](https://swift.org)
[![Platform](https://img.shields.io/badge/platform-watchOS%2010%2B-lightgrey.svg?style=flat)](https://github.com/qudia/QudiaColorWheel)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

A color wheel/picker for watchOS based on [Colorful](https://github.com/hayashi311/Color-Picker-for-iOS) that uses the Digital Crown as a brightness slider.

<img src="https://raw.githubusercontent.com/qudia/QudiaColorWheel/main/readme_images/capture.gif" alt="Screen Capture" width="160">

## Installation

QudiaColorWheel is available through the [Swift Package Manager](https://swift.org/package-manager/).

### Xcode

In Xcode, go to **File → Add Package Dependencies…**, enter the repository URL and select the version rule you want:

```
https://github.com/qudia/QudiaColorWheel
```

Then add the `QudiaColorWheel` library to your watch app target.

### Package.swift

Add the package to your `dependencies`, and the library to the targets that need it:

```swift
dependencies: [
    .package(url: "https://github.com/qudia/QudiaColorWheel.git", from: "2.0.5")
],
targets: [
    .target(
        name: "MyWatchApp",
        dependencies: ["QudiaColorWheel"]
    )
]
```

Then import it where you use it:

```swift
import QudiaColorWheel
```

## Usage

You can use `QudiaColorWheel` in a SwiftUI view structure, as well as `QudiaColorWheelController` in your storyboard.

### Usage in a SwiftUI view structure

Just use  `QudiaColorWheel` as a normal SwiftUI view.

```swift
var body: some View {
    VStack {
        Text("Select a Color")
        QudiaColorWheel()
    }
}
```

### Usage in the Storyboard

To use QudiaColorWheel in the storyboard, add a new Hosting Controller and change its Custom Class as follows:

**Class:** QudiaColorWheelController  
**Module:** QudiaColorWheel

Make sure to **uncheck** Inherit Module From Target.

<img src="https://raw.githubusercontent.com/qudia/QudiaColorWheel/main/readme_images/storyboard_custom_class.png" alt="Screen Capture" width="257">

### Attributes

To get all the different attributes and modify the selected color from SwiftUI, initialize `QudiaColorWheelSettings.shared` as an `ObservedObject`:

```swift
@ObservedObject var colorWheelSettings = QudiaColorWheelSettings.shared
```

You can **get/set the currently selected color** with `colorWheelSettings.color`.

To get the **border color** QudiaColorWheel is currently using for the thumb view, use `colorWheelSettings.borderColor`.

To get whether **a color is light or dark**, use `colorWheelSettings.isLightColor`.

## Example

To run the example project, clone the repo and open `Example/QudiaColorWheel.xcodeproj`. It consumes the package as a local Swift package dependency, so there is no dependency step to run first.

## Requirements

- watchOS 10.0+
- Swift 5.9+

## Author

Qudia  
https://qudia.io

## License

QudiaColorWheel is available under the MIT license. See the LICENSE file for more info.
