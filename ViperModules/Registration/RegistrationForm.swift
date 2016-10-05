//
//  RegistrationForm.swift
//  Wishlist
//
//  Created by OldMan on 29/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import Foundation

class RegistrationForm: AuthorizationForm {
    let passwordConfirmation: String
    
    init(phoneNumber: String, password: String, passwordConfirmation: String) {
        self.passwordConfirmation = passwordConfirmation
        super.init(phoneNumber: phoneNumber, password: password)
    }
}
