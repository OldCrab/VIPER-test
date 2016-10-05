//
//  TabBarTabBarPresenter.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 23/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class TabBarPresenter: TabBarModuleInput, TabBarViewOutput, TabBarInteractorOutput {

    weak var view: TabBarViewInput!
    var interactor: TabBarInteractorInput!
    var router: TabBarRouterInput!

    func viewIsReady() {
        self.view.setupInitialState()
    }
    
    func getViewControllers() -> [UIViewController] {
        var result: [UIViewController] = [EventsViewController()]
        result.append(UIViewController(nibName: "WishlistView", bundle: nil))
        result.append(UIViewController(nibName: "ProfileView", bundle: nil))

        return result
    }
    
    
}
