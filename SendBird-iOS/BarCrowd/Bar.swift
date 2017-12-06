//
//  Bar.swift
//  BarCrowd
//
//  Created by Mason Mahoney on 12/4/17.
//  Copyright © 2017 Mason Mahoney. All rights reserved.
//

import Foundation

class Bar{ var name : String?
    var barId : String?
    var type : String?
    var contact : String?
    var description : String?
    var location : String?
    var cover : String?
    var weekSpecial : String?
    
    init?(name : String?, barId : String?, type : String?, contact : String?, description: String?, location : String?, cover : String?, weekSpecial : String?) {
        /*guard !(name?.isEmpty)! else {
         return nil
         }
         
         guard !(location?.isEmpty)! else {
         return nil
         }*/
        
        self.name = name
        self.barId = barId
        self.type = type
        self.contact = contact
        self.description = description
        self.location = location
        self.cover = cover
        self.weekSpecial = weekSpecial
    }
    

}
