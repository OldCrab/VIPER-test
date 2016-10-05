//
//  EventsEventsPresenter.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 25/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class EventsPresenter: NSObject,EventsModuleInput, EventsViewOutput, EventsInteractorOutput {
    
    let cellHeight: CGFloat = 214
    var events = [Event(name: "Paparazzi", startDate: Date(), image: nil)]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("EventCell", owner: self, options: nil)?.first as! EventCell
        cell.conformEvent(events[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return cellHeight
    }

    func eventsDidReceive(events: [Event]) {
        self.events += events
    }


    weak var view: EventsViewInput!
    var interactor: EventsInteractorInput!
    var router: EventsRouterInput!

    func viewIsReady() {

    }
}
