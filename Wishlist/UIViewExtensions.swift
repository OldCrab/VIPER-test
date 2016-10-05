//
//  UIViewExtensions.swift
//  Wishlist
//
//  Created by OldMan on 29/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit
import Foundation

extension UIView {
    func slideInFromRight(duration: TimeInterval = 1.0) {
        // Create a CATransition animation
        let slideInFromRightTransition = CATransition()
        
        // Set its callback delegate to the completionDelegate that was provided (if any)
        // Customize the animation's properties
        slideInFromRightTransition.type = kCATransitionPush
        slideInFromRightTransition.subtype = kCATransitionFromRight
        slideInFromRightTransition.duration = duration
        slideInFromRightTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        slideInFromRightTransition.fillMode = kCAFillModeRemoved
        
        // Add the animation to the View's layer
        self.layer.add(slideInFromRightTransition, forKey: "slideInFromRightTransition")
    }
    
    func makeRounded(cornerRadius: CGFloat?, borderWidth: CGFloat = 1, borderColor: UIColor = UIColor.white) {
        print(self.frame.height)
        self.layer.cornerRadius = cornerRadius ?? self.frame.height / 2
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.masksToBounds = true
    }
}
