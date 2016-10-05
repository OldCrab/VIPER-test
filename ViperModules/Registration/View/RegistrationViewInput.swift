//
//  RegistrationRegistrationViewInput.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 29/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

protocol RegistrationViewInput: class {

    /**
        @author Andrew Vasiliev
        Setup initial state of the view
    */

    func setupInitialState()
    
    func customizeNavigationBar(title: String, backTitle: String)
}
