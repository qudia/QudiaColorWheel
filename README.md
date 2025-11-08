<img src="https://raw.githubusercontent.com/qudia/QudiaColorWheel/main/readme_images/appicon.png" width="120">

# QudiaColorWheel

[![Version](https://img.shields.io/cocoapods/v/QudiaColorWheel.svg?style=flat)](https://cocoapods.org/pods/QudiaColorWheel)
[![License](https://img.shields.io/cocoapods/l/QudiaColorWheel.svg?style=flat)](https://cocoapods.org/pods/QudiaColorWheel)
[![Platform](https://img.shields.io/cocoapods/p/QudiaColorWheel.svg?style=flat)](https://cocoapods.org/pods/QudiaColorWheel)

A color wheel/picker for watchOS based on [Colorful](https://github.com/hayashi311/Color-Picker-for-iOS) that uses the Digital Crown as a brightness slider.

<img src="https://raw.githubusercontent.com/qudia/QudiaColorWheel/main/readme_images/capture.gif" alt="Screen Capture" width="160">

## Installation

QudiaColorWheel is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'QudiaColorWheel'
```
Also, QudiaColorWheel is available through SPM (Note: Update this when feature merged on parent pod)

```ruby
https://github.com/radg1596/QudiaColorWheel-SPM
```

## Usage

You can use `QudiaColorWheel` in a SwiftUI view structure, as well as `QudiaColorWheelController` in your storyboard, if you need to support watchOS 6.

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

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

watchOS 6.2.1

## Author

Qudia  
https://qudia.io

## License

QudiaColorWheel is available under the MIT license. See the LICENSE file for more info.
