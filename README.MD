# SwiftWebP

A Swift WebP Decoder and Encoder for UIKit UIImage.

## Features
- Encode UIImage/PNG data to WebP data.
- Decode WebP data to UIImage.

## Installation

#### Swift Package Manager

File > Swift Packages > Add Package Dependency
Add - Add https://github.com/alfianlosari/SwiftWebP.git

## Libraries Used
- [Google libwebp](https://chromium.googlesource.com/webm/libwebp/)
- [libwebp-xcode](https://github.com/SDWebImage/libwebp-Xcode)
- [YYImage](https://github.com/ibireme/YYImage)

## Usage

### Import it

```swift
import SwiftWebP
```

### Encode PNG Data
```swift
if let webPData = WebPEncoder().encodePNG(data: outputPngData) {
    // use your webP data
}
```

### Encode UIImage
```swift
if let webPData = WebPEncoder().encode(image: myUIImage) {
    // use your webP data
}
```

### Decode WebP data
```swift
if let images = WebPDecoder().decode(data: webpData) {
    // images type is array [UIImage]
}
```