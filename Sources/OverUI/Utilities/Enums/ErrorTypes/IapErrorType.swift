//
//  IapErrorType.swift
//
//
//  Created by Yunus Emre Berdibek on 8.07.2024.
//

import Foundation

public enum IapErrorType: Error, Equatable, ErrorTypeProtocol {
    case general
    case anotherPurchaseOngoing
    case anotherRestoreOngoing
    case couldNotFetchCustomerInfo, couldNotFetchProducts, couldNotFindPackage, couldNotPurchase(NSError), couldNotRestore,
         customerInfoIsNil
    case couldNotFindPromoCode
    case userCancelled

    public var logMessage: String { userFriendlyMessage }

    public var userFriendlyMessage: String { "" }
}
