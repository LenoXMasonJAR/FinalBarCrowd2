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
        self.tintColor = FONT_COLOR
        self.backgroundColor = PURPLE_COLOR
        self.layer.borderWidth = 1.0
        self.layer.borderColor = PURPLE_COLOR.cgColor
        self.layer.cornerRadius = 5.0
    }

}
