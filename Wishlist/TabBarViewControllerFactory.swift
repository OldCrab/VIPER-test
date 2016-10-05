//
//  TabBarViewControllerFactory.swift
//  Wishlist
//
//  Created by OldMan on 26/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

protocol TabBarViewControllerFactory: ViewControllerFactory {
    func obtainTabBarViewController() -> TabBarViewController
}
