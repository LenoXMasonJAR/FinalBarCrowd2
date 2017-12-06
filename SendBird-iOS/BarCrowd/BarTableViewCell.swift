//
//  BarTableViewCell.swift
//  BarCrowd
//
//  Created by Mason Mahoney on 12/4/17.
//  Copyright © 2017 Mason Mahoney. All rights reserved.
//

import UIKit

class BarTableViewCell: UITableViewCell {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var firstLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
