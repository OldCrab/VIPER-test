//
//  TabBarView.swift
//  Wishlists
//
//  Created by OldMan on 09/09/16.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

class TabBarView: UIView {

    @IBOutlet weak var calendarButton: UIButton!
    @IBOutlet weak var wishlistButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var calendarImage: UIImageView!
    
    weak var delegate: CustomTabBarDelegate!
    
    override func awakeFromNib() {
        wishlistButton.adjustsImageWhenHighlighted = false
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return calendarButton.point(inside: point - calendarButton.frame.origin, with: event) ||
            wishlistButton.point(inside: point - wishlistButton.frame.origin, with: event) ||
            profileButton.point(inside: point - profileButton.frame.origin, with: event)
    }
    
    @IBAction func openCalendar() {
        buttonPressed(number: 0) { self.calendarImage.isHighlighted = true }
    }
    @IBAction func openWishlist() {
        buttonPressed(number: 1) { self.wishlistButton.isSelected = true }
    }
    @IBAction func openProfile() {
        buttonPressed(number: 2) { self.profileImage.isHighlighted = true }
    }
    
    func buttonPressed(number: Int, complition: (() -> Void)?) {
        delegate.selectTabBarItemAtIndex(index: number)
        resetSelection()
        complition?()
    }
    
    func resetSelection() {
        calendarImage.isHighlighted = false
        wishlistButton.isSelected = false
        profileImage.isHighlighted = false
    }
}

protocol CustomTabBarDelegate: class {
    func selectTabBarItemAtIndex(index: Int)
}

func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}
