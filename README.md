# CMBarcodeBright

[![CI Status](http://img.shields.io/travis/cjh0092@naver.com/CMBarcodeBright.svg?style=flat)](https://travis-ci.org/cjh0092@naver.com/CMBarcodeBright)
[![Version](https://img.shields.io/cocoapods/v/CMBarcodeBright.svg?style=flat)](http://cocoapods.org/pods/CMBarcodeBright)
[![License](https://img.shields.io/cocoapods/l/CMBarcodeBright.svg?style=flat)](http://cocoapods.org/pods/CMBarcodeBright)
[![Platform](https://img.shields.io/cocoapods/p/CMBarcodeBright.svg?style=flat)](http://cocoapods.org/pods/CMBarcodeBright)

## Features
- [x] BarcodeView Bright 100%
- [x] Other View support user bright
- [x] Control Center and Alert Control Support
- [x] Home button Click Support

## Installation

CMBarcodeBright is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CMBarcodeBright'
```
## How to use
- Appdelegate.swift

```
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    // set user Bright
    CMBarcodeBright.shard.initBright()
    return true
    
}

func applicationWillResignActive(_ application: UIApplication) {
    // Call Home Button Pressed.
    // Call Control Center
    // Call Alert Control
    CMBarcodeBright.shard.applicationWillResignActive(targetClass: BarcodeViewController.self)
}

func applicationWillEnterForeground(_ application: UIApplication) {
    // From Background to foreground( your App )
    CMBarcodeBright.shard.applicationWillEnterForeground(targetClass: BarcodeViewController.self)
/
}

func applicationDidBecomeActive(_ application: UIApplication) {
    // Close Control Center and Alert Control
    CMBarcodeBright.shard.applicationDidBecomeActive(targetClass: BarcodeViewController.self)

}

```
- Barcode ViewContorller
    - `viewDidLoad` `CMBarcodeBright.shard.setBarcodeViewBright()`
    - Add close and backButton Method `CMBarcodeBright.shard.restoreBright()`




## Author

[Junghoon](coolmint.swift@gmail.com)

## License

CMBarcodeBright is available under the MIT license. See the LICENSE file for more info.


