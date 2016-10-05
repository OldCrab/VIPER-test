//
//  AuthenticationAuthenticationViewOutput.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 28/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

protocol AuthenticationViewOutput {

    /**
        @author Andrew Vasiliev
        Notify presenter that view is ready
    */

    func viewIsReady()
    func showLicense()
    func signUp()
    func logIn()
}
