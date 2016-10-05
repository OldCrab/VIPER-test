//
//  TabBarViewControllerFactoryImpl.swift
//  Wishlist
//
//  Created by OldMan on 26/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

class TabBarViewControllerFactoryImpl: TabBarViewControllerFactory {
    var storyboard: UIStoryboard
    
    init(storyboard: UIStoryboard) {
        self.storyboard = storyboard
    }
    
    func obtainViewController() -> UIViewController {
        return obtainTabBarViewController()
    }
    
    func obtainTabBarViewController() -> TabBarViewController {
        return storyboard.instantiateInitialViewController() as! TabBarViewController
    }}
