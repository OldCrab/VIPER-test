//
//  RegistrationRegistrationInteractorInput.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 29/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import Foundation

protocol RegistrationInteractorInput {
    func tryToSignUp(withForm form: RegistrationForm) throws
}
