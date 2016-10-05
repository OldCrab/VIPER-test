//
//  AuthTextField.swift
//  Wishlist
//
//  Created by OldMan on 28/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

class AuthTextField: UITextField {
    var contentColor = UIColor.white
    
    override func draw(_ rect: CGRect) {
        updateView(rect: rect)
        
        self.tintColor = contentColor
        if self.placeholder != nil {
            let phAttributes = [NSForegroundColorAttributeName: contentColor]
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: phAttributes)
        }
    }
    
    func updateView(rect: CGRect) {
        self.makeRounded(cornerRadius: nil)
    }
}
