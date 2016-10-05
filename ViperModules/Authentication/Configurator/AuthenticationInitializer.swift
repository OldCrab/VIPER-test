//
//  AuthenticationAuthenticationInitializer.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 28/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class AuthenticationModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var authenticationViewController: AuthenticationViewController!

    override func awakeFromNib() {

        let configurator = AuthenticationModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: authenticationViewController)
    }

}
