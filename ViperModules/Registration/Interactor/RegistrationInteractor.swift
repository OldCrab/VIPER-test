//
//  RegistrationRegistrationInteractor.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 29/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

class RegistrationInteractor: RegistrationInteractorInput {

    weak var output: RegistrationInteractorOutput!

    func tryToSignUp(withForm form: RegistrationForm) throws {
        if form.password != form.passwordConfirmation {
            throw RegistrationError.invalidConfirmation
        }
    }

}

