//
//  AuthenticationViewControllerFactoryImpl.swift
//  Wishlist
//
//  Created by OldMan on 28/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

class AuthenticationViewControllerFactoryImpl: AuthenticationViewControllerFactory {

    func obtainViewController() -> UIViewController {
        return obtainAuthenticationViewController()
    }
    
    func obtainAuthenticationViewController() -> AuthenticationViewController {
        return AuthenticationViewController()
    }
}
