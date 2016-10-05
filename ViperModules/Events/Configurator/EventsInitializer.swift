//
//  EventsEventsInitializer.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 25/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class EventsModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var eventsViewController: EventsViewController!

    override func awakeFromNib() {
        let configurator = EventsModuleConfigurator()

        configurator.configureModuleForViewInput(viewInput: eventsViewController)
    }

}
