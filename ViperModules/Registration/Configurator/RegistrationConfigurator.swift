//
//  RegistrationRegistrationConfigurator.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 29/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class RegistrationModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? RegistrationViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: RegistrationViewController) {

        let router = RegistrationRouter(view: viewController.view)

        let presenter = RegistrationPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = RegistrationInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
