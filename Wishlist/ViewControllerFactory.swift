//
//  ViewControllerFactory.swift
//  Wishlist
//
//  Created by OldMan on 28/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

protocol ViewControllerFactory {
    func obtainViewController() -> UIViewController
}
