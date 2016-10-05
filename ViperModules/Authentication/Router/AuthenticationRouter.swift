//
//  AuthenticationAuthenticationRouter.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 28/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import Foundation
import UIKit

class AuthenticationRouter: AuthenticationRouterInput {
    
    var navigationController: UINavigationController?
    
    func openRegistration() {
        if navigationController != nil {
            navigationController!.pushViewController(RegistrationViewController(), animated: true)
        }
    }
    
    func openLicenseAgreement() {
        
        if let url = URL(string: kLicenseString) {
            UIApplication.shared.openURL(url)
        }
    }
    
    func openMain() {
        
    }

}
