//
//  BarButton.swift
//  BarCrowd
//
//  Created by Mason Mahoney on 12/4/17.
//  Copyright © 2017 Mason Mahoney. All rights reserved.
//

import UIKit

class BarButton: UIButton {

    override func awakeFromNib() {
        self.tintColor = UIColor.blue
        self.backgroundColor = UIColor.orange
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.cornerRadius = 5.0
    }

}
