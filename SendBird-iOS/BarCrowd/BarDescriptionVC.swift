//
//  BarDescriptionVC.swift
//  
//
//  Created by Mason Mahoney on 11/28/17.
//

import UIKit
import Foundation


class BarDescriptionVC: UIViewController{
 
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var coverLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var bar : Bar?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let b = self.bar {
            self.addressLabel.text = b.location
            self.coverLabel.text = b.cover
            self.phoneLabel.text = b.contact
            self.descriptionLabel.text = b.description
            self.titleLabel.text = b.name
            
        }
        //self.addressLabel.text = "\(barArray[myIndex])"
        //self.phoneLabel.text = "Phone Number \(barNum[myIndex])"
        //self.coverLabel.text = "Cover: \(barCover[myIndex])"
        //self.descriptionLabel.text = "Address: \(barAdd[myIndex])"
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
