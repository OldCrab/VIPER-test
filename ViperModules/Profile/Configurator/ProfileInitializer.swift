//
//  ProfileProfileInitializer.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 26/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class ProfileModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var profileViewController: ProfileViewController!

    override func awakeFromNib() {

        let configurator = ProfileModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: profileViewController)
    }

}
