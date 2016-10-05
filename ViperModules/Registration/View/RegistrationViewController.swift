//
//  RegistrationRegistrationViewController.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 29/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, RegistrationViewInput {
    @IBOutlet weak var phoneField: AuthTextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var passwordConfirmationField: AuthTextField!
    @IBOutlet var requiredTextFields: [UITextField]!

    var output: RegistrationViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationItem.rightBarButtonItems = [UIBarButtonItem(image: UIImage(named: "calendar"), style: .plain, target: nil, action: nil), UIBarButtonItem(image: UIImage(named: "profile"), style: .plain, target: nil, action: nil)]
        output.viewIsReady()
    }
    
    convenience init() {
        self.init(nibName: "RegistrationView", bundle: nil)
    }

    // MARK: RegistrationViewInput
    func setupInitialState() {
    }
    
    func customizeNavigationBar(title: String, backTitle: String) {
        self.title = title
        self.navigationController?.navigationBar.backItem?.backBarButtonItem = UIBarButtonItem(title: backTitle, style: .plain, target: nil, action: nil)
    }

    
    @IBAction func signUp() {
        if !hasEmptyRequiredFields(requiredTextFields) {
            let form = RegistrationForm(phoneNumber: phoneField.text!, password: passField.text!, passwordConfirmation: passwordConfirmationField.text!)
            output.tryToSignUp(withForm: form)
        } else {
            // fill all required fields!!
        }
    }
    
    
    
    func hasEmptyRequiredFields(_ fields: [UITextField]) -> Bool {
        var result = false
        for field in fields {
            result = isEmpty(field: field) || result
        }
        
        return result
    }
    
    func isEmpty(field: UITextField) -> Bool{
        let result = field.isEmpty()
        colorizeField(field, isEmpty: result)
        return result
    }
    
    func colorizeField(_ field: UITextField, isEmpty: Bool) {
        if isEmpty {
            field.layer.borderColor = UIColor.red.cgColor
        } else {
            field.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    
}
