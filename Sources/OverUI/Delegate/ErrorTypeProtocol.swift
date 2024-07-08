//
//  File.swift
//
//
//  Created by Yunus Emre Berdibek on 8.07.2024.
//

import Foundation

public protocol ErrorTypeProtocol {
    var logMessage: String { get }
    var userFriendlyMessage: String { get }
}
