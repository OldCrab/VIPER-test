//
//  WishlistWishlistInitializer.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 27/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class WishlistModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var wishlistViewController: WishlistViewController!

    override func awakeFromNib() {

        let configurator = WishlistModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: wishlistViewController)
    }

}
