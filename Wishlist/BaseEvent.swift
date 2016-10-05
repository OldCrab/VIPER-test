//
//  BaseEvent.swift
//  Wishlist
//
//  Created by OldMan on 29/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import Foundation

class BaseEvent: BaseEntity {
    var name: String
    var startDate: Date
    
    init(name: String, startDate: Date) {
        self.name = name
        self.startDate = startDate
    }
}
