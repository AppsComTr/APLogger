//
//  APLogger.swift
//  APLogger
//
//  Created by Orhun Mert Şimşek on 16.08.2018.
//  Copyright © 2018 Apps. All rights reserved.
//

import Foundation

@objc open class APLogger: NSObject {
    
    @objc open static var isDebug: Bool = false
    
    // Customizable values
    @objc open static var infoDescriptorString = "ℹ️"
    @objc open static var warningDescriptorString = "⚠️"
    @objc open static var errorDescriptorString = "⛔"
    @objc open static var fatalDescriptorString = "🆘"
    
    @objc open static var releaseMinimumLogLevel: LogLevel = .error
    
    private static var originalLogFormatString = "%@ %@ - %@"
    private static var logFormatString = originalLogFormatString
    
    @objc open static func log(_ title: String, _ description: String?, _ logLevel: LogLevel) {
        
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
    
    @objc open static func logInfo(_ title: String, _ description: String?) {
        print(String(format: logFormatString, arguments: [infoDescriptorString, title, description ?? ""]))
    }
    
    @objc open static func logWarning(_ title: String, _ description: String?) {
        print(String(format: logFormatString, arguments: [warningDescriptorString, title, description ?? ""]))
    }
    
    @objc open static func logError(_ title: String, _ description: String?) {
        print(String(format: logFormatString, arguments: [errorDescriptorString, title, description ?? ""]))
    }
    
    @objc open static func logFatal(_ title: String, _ description: String?) {
        print(String(format: logFormatString, arguments: [fatalDescriptorString, title, description ?? ""]))
    }
    
    @objc open static func changeLogFormat(_ format: String!) {
        if (format.isEmpty) {
            return
        }
        logFormatString = format
    }
    
}
