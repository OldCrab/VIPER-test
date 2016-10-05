//
//  RegistrationRegistrationViewOutput.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 29/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

protocol RegistrationViewOutput {

    /**
        @author Andrew Vasiliev
        Notify presenter that view is ready
    */
    
    func tryToSignUp(withForm form: RegistrationForm)
    
    func viewIsReady()
}
