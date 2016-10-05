//
//  UITextFieldExtensions.swift
//  Wishlist
//
//  Created by OldMan on 29/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

extension UITextField {
    func isEmpty() -> Bool {
        return self.text == nil || self.text!.isEmpty
    }
}
