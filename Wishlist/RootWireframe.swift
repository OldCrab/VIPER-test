//
//  RootWireframe.swift
//  Wishlist
//
//  Created by OldMan on 23/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

class RootWireframe {
    var viewControllerFactory: ViewControllerFactory?
    
    
    func application(didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?, withWindow window: UIWindow) -> Bool {
        window.rootViewController = chooseInitialController()
        window.makeKeyAndVisible()

        return true
    }
    
    func chooseInitialController() -> UIViewController {
        return makeAuthScreen()
//        viewControllerFactory = TabBarViewControllerFactoryImpl(storyboard: UIStoryboard(name: "TabBar", bundle: nil))

        return createInitialController()
    }
    
    func makeAuthScreen() -> UIViewController {
        viewControllerFactory = AuthenticationViewControllerFactoryImpl()
        let navig = StandardNavigationController(rootViewController: createInitialController())
        return navig
    }
    
    func createInitialController() -> UIViewController {
        return viewControllerFactory!.obtainViewController()
    }
    &?G*n!#1
}
