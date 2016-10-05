//
//  AuthenticationAuthenticationConfigurator.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 28/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class AuthenticationModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? AuthenticationViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: AuthenticationViewController) {

        let router = AuthenticationRouter()
        router.navigationController = viewController.navigationController

        let presenter = AuthenticationPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = AuthenticationInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
