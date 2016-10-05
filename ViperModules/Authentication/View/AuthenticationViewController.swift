//
//  AuthenticationAuthenticationViewController.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 28/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController, AuthenticationViewInput {
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var licenseButton: UIButton!

    var output: AuthenticationViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    convenience init() {
        self.init(nibName: "AuthenticationView", bundle: nil)
    }
    
    @IBAction func forgotPassword() {
        print("Forgot :[")
    }
    
    @IBAction func signUp() {
        output.signUp()
    }
    
    @IBAction func openLicense() {
        output.showLicense()
    }
    // MARK: AuthenticationViewInput
    func setupInitialState() {
    }
}
