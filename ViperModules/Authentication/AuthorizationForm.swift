//
//  AuthorizationForm.swift
//  Wishlist
//
//  Created by OldMan on 29/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import Foundation

class AuthorizationForm {
    let phoneNumber: String
    let password: String
    
    init(phoneNumber: String, password: String) {
        self.phoneNumber = phoneNumber
        self.password = password
    }
}
