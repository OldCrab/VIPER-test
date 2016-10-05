//
//  StylizedLabel.swift
//  Wishlist
//
//  Created by OldMan on 01/10/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

class StylizedLabel: UILabel {

    
    override func draw(_ rect: CGRect) {
        updateView()
    }
    
    func updateView() {
        self.makeRounded(cornerRadius: nil)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
