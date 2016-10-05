//
//  EventsEventsConfigurator.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 25/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class EventsModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? EventsViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: EventsViewController) {
        let router = EventsRouter()

        let presenter = EventsPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = EventsInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
