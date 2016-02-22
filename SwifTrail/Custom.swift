//
//  Custom.swift
//  SwifTrail
//
//  Created by jonathan thornburg on 1/6/16.
//  Copyright © 2016 jonathan thornburg. All rights reserved.
//

import UIKit

class Custom: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var trailLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func mapItButtonTapped(sender: AnyObject) {
    }
}
