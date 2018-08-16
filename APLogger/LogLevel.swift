//
//  LogLevel.swift
//  APLogger
//
//  Created by Orhun Mert Şimşek on 16.08.2018.
//  Copyright © 2018 Apps. All rights reserved.
//

import Foundation


@objc public enum LogLevel: Int, RawRepresentable {
    case info
    case warning
    case error
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
