//
//  LogLevel.swift
//  APLogger
//
//  Created by Orhun Mert Şimşek on 16.08.2018.
//  Copyright © 2018 Apps. All rights reserved.
//

import Foundation

/// Enumeration that used to set log level
@objc public enum LogLevel: Int, RawRepresentable {
    /// Info log level. You may use this level on development to see some informative logs.
    case info
    /// Warning log level. You may use this level to log some unexpected situations.
    case warning
    /**
        Error log level. You may use this level to log some unexpected situations
        which causes the code does not work correctly.
     */
    case error
    /**
        Fatal log level. You may use this level to log a serious situation.
        This situation may causes crash. Hope you won't see this log.
     */
    case fatal

    public typealias RawValue = Int
    
    public var rawValue: RawValue {
        switch self {
        case .info:
            return 0
        case .warning:
            return 1
        case .error:
            return 2
        case .fatal:
            return 3
        }
    }
    
    public init?(rawValue: RawValue) {
        switch rawValue {
        case 0:
            self = .info
        case 1:
            self = .warning
        case 2:
            self = .error
        case 3:
            self = .fatal
        default:
            self = .info
        }
    }
}
