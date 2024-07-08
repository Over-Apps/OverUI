//
//  ErrorType.swift
//
//
//  Created by Yunus Emre Berdibek on 8.07.2024.
//

import Foundation

public enum ErrorType: Error, Equatable, ErrorTypeProtocol {
    case forceUpdateRequired
    case general
    case iapError(IapErrorType)
    case networkError(NetworkErrorType)

    public var logMessage: String { userFriendlyMessage }

    public var userFriendlyMessage: String {
        switch self {
        case .iapError(let error):
            return LocalizationType.iapErrorType.rawValue

        case .networkError(let error):
            return LocalizationType.networkErrorType.rawValue

        default:
            return LocalizationType.errorType.rawValue
        }
    }
}
