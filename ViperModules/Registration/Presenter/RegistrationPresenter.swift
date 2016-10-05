//
//  RegistrationRegistrationPresenter.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 29/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

class RegistrationPresenter: RegistrationModuleInput, RegistrationViewOutput, RegistrationInteractorOutput {

    weak var view: RegistrationViewInput!
    var interactor: RegistrationInteractorInput!
    var router: RegistrationRouterInput!

    func tryToSignUp(withForm form: RegistrationForm) {
        do {
            try interactor.tryToSignUp(withForm: form)
            router.signUpFinished()
        } catch {
//            print(error.localizedDescription)
        }
    }
    
    func viewIsReady() {
        view.customizeNavigationBar(title: "New User Registration", backTitle: "")
    }
}
