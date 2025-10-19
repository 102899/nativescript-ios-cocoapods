# NativeScript iOS SDK (CocoaPods)

This is a CocoaPods version of the NativeScript iOS Runtime SDK, converted from the original Swift Package Manager format.

## Installation

Add the following to your `Podfile`:

```ruby
pod 'NativeScriptSDK', :git => 'https://github.com/yourusername/nativescript-ios-cocoapods.git', :tag => '8.8.0'
```

Then run:

```bash
pod install
```

## Usage

Import the framework in your Swift files:

```swift
import NativeScriptSDK
```

### Basic Integration

```swift
import UIKit
import NativeScriptSDK

class ViewController: UIViewController {
    
    func setupNativeScript(appFolder: String?) {
        DispatchQueue.global(qos: .userInitiated).async {
            // Initialize NativeScript v8 instance on background thread
            let config = Config()
            config.logToSystemConsole = true
            config.baseDir = Bundle.main.resourcePath
            config.applicationPath = appFolder
            
            let ns = NativeScript(config: config)
            
            // Run the NativeScript app on the UI thread
            DispatchQueue.main.async {
                ns?.runMainApplication()
            }
        }
    }
}
```

## Requirements

- iOS 13.0+
- Xcode 12.0+
- Swift 5.0+

## License

MIT License - see the podspec file for full license text.

## Original Source

This package is based on the official NativeScript iOS SDK from:
- https://github.com/NativeScript/ios-spm

## Version

Current version: 8.8.0 (NativeScript v8 runtime)