//
//  TabBarTabBarConfigurator.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 23/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class TabBarModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? TabBarViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: TabBarViewController) {

        let router = TabBarRouter()

        let presenter = TabBarPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = TabBarInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
