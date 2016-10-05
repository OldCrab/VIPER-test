//
//  TabBarTabBarInitializer.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 23/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class TabBarModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var tabbarViewController: TabBarViewController!

    override func awakeFromNib() {
        let configurator = TabBarModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: tabbarViewController)
    }
}
