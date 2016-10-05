//
//  TabBarTabBarViewController.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 23/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, TabBarViewInput, CustomTabBarDelegate {

    var output: TabBarViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let newTabBarFrame = createTabBarsFrame()
        let newTabBar = createTabBar()
        newTabBar.frame = newTabBarFrame
        self.view.addSubview(newTabBar)
    }
    
    func selectTabBarItemAtIndex(index: Int) {
        self.selectedIndex = index
    }
    
    func createTabBarsFrame() -> CGRect {
        var newTabBarFrame = self.tabBar.frame
        let heightDiff = 18 / 124 * self.tabBar.frame.height
        newTabBarFrame.size.height += heightDiff
        newTabBarFrame.origin.y -= heightDiff
        return newTabBarFrame
    }
    
    func createTabBar() -> UIView {
        guard let views = Bundle.main.loadNibNamed("WishlistTabBar", owner: self, options: nil), let newTabBar = views.first as? TabBarView else {
            print(Bundle.main.loadNibNamed("WishlistTabBar", owner: self, options: nil))
            return UIView()
        }
        newTabBar.delegate = self
        return newTabBar
    }
    


    // MARK: TabBarViewInput
    func setupInitialState() {
        self.viewControllers = output.getViewControllers()
    }
}
