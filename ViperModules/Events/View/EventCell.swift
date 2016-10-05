//
//  EventCell.swift
//  Wishlist
//
//  Created by OldMan on 30/09/2016.
//  Copyright © 2016 ags24. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {
    
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var briefDescription: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func conformEvent(_ event: Event) {
        self.eventImageView.image = event.image
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        print(formatter.string(from: event.startDate))
        self.briefDescription.text = event.name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
