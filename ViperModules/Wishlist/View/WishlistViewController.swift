//
//  WishlistWishlistViewController.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 27/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class WishlistViewController: UIViewController, WishlistViewInput {

    var output: WishlistViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: WishlistViewInput
    func setupInitialState() {
    }
}
