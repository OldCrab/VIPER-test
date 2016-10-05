//
//  EventsEventsViewOutput.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 25/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

protocol EventsViewOutput: UITableViewDelegate, UITableViewDataSource {

    /**
        @author Andrew Vasiliev
        Notify presenter that view is ready
    */

    func viewIsReady()
}
