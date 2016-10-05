//
//  AuthenticationAuthenticationPresenter.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 28/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

class AuthenticationPresenter: AuthenticationModuleInput, AuthenticationViewOutput, AuthenticationInteractorOutput {

    weak var view: AuthenticationViewInput!
    var interactor: AuthenticationInteractorInput!
    var router: AuthenticationRouterInput!

    func viewIsReady() {

    }
    
    func showLicense() {
        router.openLicenseAgreement()
    }
    
    func signUp() {
        router.openRegistration()
    }
    
    func logIn() {
        router.openMain()
    }
    
    
}
