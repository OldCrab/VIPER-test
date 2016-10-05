//
//  ProfileProfileViewController.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 26/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, ProfileViewInput {

    var output: ProfileViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: ProfileViewInput
    func setupInitialState() {
    }
}
