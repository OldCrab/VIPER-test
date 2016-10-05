//
//  WishlistWishlistConfigurator.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 27/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class WishlistModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? WishlistViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: WishlistViewController) {

        let router = WishlistRouter()

        let presenter = WishlistPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = WishlistInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
