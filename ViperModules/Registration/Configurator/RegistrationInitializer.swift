//
//  RegistrationRegistrationInitializer.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 29/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class RegistrationModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var registrationViewController: RegistrationViewController!

    override func awakeFromNib() {

        let configurator = RegistrationModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: registrationViewController)
    }

}
