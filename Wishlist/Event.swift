//
//  Event.swift
//  Wishlist
//
//  Created by OldMan on 29/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import Foundation
import UIKit

class Event: BaseEvent {
    let image: UIImage?
    
    init(name: String, startDate: Date, imageData: Data) {
        image = UIImage(data: imageData)
        super.init(name: name, startDate: startDate)
    }
    
    init(name: String, startDate: Date, image: UIImage?) {
        self.image = image
        super.init(name: name, startDate: startDate)
    }
}
