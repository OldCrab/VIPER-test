//
//  RegistrationErrors.swift
//  Wishlist
//
//  Created by OldMan on 29/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import Foundation

enum RegistrationError: String, Error {
    case invalidConfirmation
    case simplePassword
    case serverIsUnavailable
}
