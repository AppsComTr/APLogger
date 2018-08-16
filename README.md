# APLogger
Yet another logger framework for Swift/Objective-C

[![Platform](https://img.shields.io/cocoapods/p/APLogger.svg)](https://github.com/AppsComTr/APLogger)
[![CocoaPods](https://img.shields.io/cocoapods/v/APLogger.svg)](http://cocoadocs.org/docsets/APLogger)
[![License](http://img.shields.io/cocoapods/l/APLogger.svg)](https://raw.githubusercontent.com/AppsComTr/APLogger/master/LICENSE)


## Installation
### Manual
You can drag AppLogger.swift and LogLevel.swift files directly to your project and you are all set.

### Cocoapods
`pod 'APLogger'`

## Usage

Simply, you can use below code to start logging with style!

`APLogger.log("Log Title", "Log Description", .warning)`

There are 4 log levels to make it clear when you are reading logs.

````
.info
.warning
.error
.fatal
````

By default, APLogger will print only `.error` and `.fatal` logs. But you can specify the minimum log level by using:

`APLogger.releaseMinimumLogLevel`

If you set `APLogger.isDebug = true`, it will print all logs.

## Customization

APLogger can be customized by logging format and log level descriptors. 

Log level descriptors has default values of: 

````
infoDescriptorString = "ℹ️"
warningDescriptorString = "⚠️"
errorDescriptorString = "⛔"
fatalDescriptorString = "🆘"
````

APLogger's default logging format is:

`"%@ %@ - %@"`

The parameters are with the order: log level descriptor, title and description. You can give any other string format.

## License
APLogger is released under the MIT license. See [LICENSE](https://github.com/AppsComTr/APLogger/blob/master/LICENSE) for details.
