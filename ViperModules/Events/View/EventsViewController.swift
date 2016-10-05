//
//  EventsEventsViewController.swift
//  Wishlist
//
//  Created by Andrew Vasiliev on 25/09/2016.
//  Copyright © 2016 CIP. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, EventsViewInput {

    
    @IBOutlet weak var tableView: UITableView!

    var output: EventsViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = output
        tableView.delegate = output
        output.viewIsReady()
    }
    
    override func loadView() {
        super.loadView()
    }
    
    convenience init() {
        self.init(nibName: "EventsView", bundle: nil)
    }

    // MARK: EventsViewInput
    func setupInitialState() {
    }
}
