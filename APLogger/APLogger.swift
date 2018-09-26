//
//  APLogger.swift
//  APLogger
//
//  Created by Orhun Mert Şimşek on 16.08.2018.
//  Copyright © 2018 Apps. All rights reserved.
//

import Foundation

/// Static class to use APLogger.
@objc open class APLogger: NSObject {
    
    /// This variable helps to control log level.
    @objc public static var isDebug: Bool = false
    
    /// Variable to set descriptor string for the log level info.
    @objc public static var infoDescriptorString = "ℹ️"
    /// Variable to set descriptor string for the log level warning.
    @objc public static var warningDescriptorString = "⚠️"
    /// Variable to set descriptor string for the log level error.
    @objc public static var errorDescriptorString = "⛔"
    /// Variable to set descriptor string for the log level fatal.
    @objc public static var fatalDescriptorString = "🆘"
    
    /// Use this variable to set minimum log level that you want to see when isDebug variable is false.
    @objc public static var releaseMinimumLogLevel: LogLevel = .error
    
    /// Default log format string. This may be changed by using changeLogFormat function.
    private static var originalLogFormatString = "%@ %@ - %@"
    /// Currently using log format string. This will be changed when changeLogFormat function called.
    private static var logFormatString = originalLogFormatString
    
    /**
     Main function to print log
     - parameters:
     - title: Title parameter for the log.
     - description: Description parameter for the log.
     - logLevel: Log level for the log.
     */
    @objc public static func log(_ title: String, _ description: String?, _ logLevel: LogLevel) {
        
        if (isDebug) {
            switch logLevel {
            case .info:
                self.logInfo(title, description)
            case .warning:
                self.logWarning(title, description)
            case .error:
                self.logError(title, description)
            case .fatal:
                self.logFatal(title, description)
            }
            
        } else {
            if (logLevel.rawValue >= releaseMinimumLogLevel.rawValue) {
                switch logLevel {
                case .info:
                    self.logInfo(title, description)
                case .warning:
                    self.logWarning(title, description)
                case .error:
                    self.logError(title, description)
                case .fatal:
                    self.logFatal(title, description)
                }
            }
        }
        
    }
    
    /**
     Logging function for info logs.
     - parameters:
     - title: Title parameter for the log.
     - description: Description parameter for the log.
     */
    @objc public static func logInfo(_ title: String, _ description: String?) {
        print(String(format: logFormatString, arguments: [infoDescriptorString, title, description ?? ""]))
    }
    
    /**
     Logging function for warning logs.
     - parameters:
     - title: Title parameter for the log.
     - description: Description parameter for the log.
     */
    @objc public static func logWarning(_ title: String, _ description: String?) {
        print(String(format: logFormatString, arguments: [warningDescriptorString, title, description ?? ""]))
    }
    
    /**
     Logging function for error logs.
     - parameters:
     - title: Title parameter for the log.
     - description: Description parameter for the log.
     */
    @objc public static func logError(_ title: String, _ description: String?) {
        print(String(format: logFormatString, arguments: [errorDescriptorString, title, description ?? ""]))
    }
    
    /**
     Logging function for fatal logs.
     - parameters:
     - title: Title parameter for the log.
     - description: Description parameter for the log.
     */
    @objc public static func logFatal(_ title: String, _ description: String?) {
        print(String(format: logFormatString, arguments: [fatalDescriptorString, title, description ?? ""]))
    }
    
    /**
     Funtion for customizing the log format
     - parameters:
     - format: Format string to be used for logging. You may use any format which you desire.
     */
    @objc public static func changeLogFormat(_ format: String!) {
        if (format.isEmpty) {
            return
        }
        logFormatString = format
    }
    
}
