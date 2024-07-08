//
//  File.swift
//
//
//  Created by Yunus Emre Berdibek on 8.07.2024.
//

import Foundation

public enum NetworkErrorType: String, Codable, Error, Equatable, ErrorTypeProtocol {
    case couldNotParseData
    case responseIsNil

    case emailEmpty = "EMAIL_EMPTY"

    public var logMessage: String { userFriendlyMessage }
    public var userFriendlyMessage: String { "\(self)" }
}
