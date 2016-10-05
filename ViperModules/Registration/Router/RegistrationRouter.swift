//
//  RegistrationRegistrationRouter.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 29/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//
import UIKit

class RegistrationRouter: RegistrationRouterInput {
    let view: UIView
    
    init(view: UIView) {
        self.view = view
    }

    func signUpFinished() {
        let factory: ViewControllerFactory = TabBarViewControllerFactoryImpl(storyboard:          UIStoryboard(name: "TabBar", bundle: nil))
        let newViewController = factory.obtainViewController()
        self.view.window?.slideInFromRight(duration: 0.5)
        self.view.window?.rootViewController = newViewController
    }
}
