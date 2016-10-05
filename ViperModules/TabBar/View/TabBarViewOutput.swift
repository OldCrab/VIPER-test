//
//  TabBarTabBarViewOutput.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 23/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//
import UIKit

protocol TabBarViewOutput {

    /**
        @author Andrew Vasiliev
        Notify presenter that view is ready
    */
    func getViewControllers() -> [UIViewController]
    func viewIsReady()
}
