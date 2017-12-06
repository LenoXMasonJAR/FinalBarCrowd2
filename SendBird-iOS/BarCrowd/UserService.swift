//
//  UserService.swift
//  BarCrowd
//
//  Created by Mason Mahoney on 12/5/17.
//  Copyright © 2017 Mason Mahoney. All rights reserved.
//

import Foundation
import Firebase
import FirebaseStorage


struct UserService{
    static func storeImages(imageView: UIImageView, storageFielname: String, completion: @escaping (String) -> Void){
        let imageName = UUID().uuidString
        let storageRef = Storage.storage().reference().child(storageFielname).child("\(imageName).jpeg")
        
        if let imageToBeStored = imageView.image, let uploadData = UIImageJPEGRepresentation(imageToBeStored, 0.1){
            storageRef.putData(uploadData, metadata: nil, completion: { (metadata, error) in
    
                if error != nil {
                    print("there is an error", error ?? "")
                }else{
                    if let imageUrl = metadata?.downloadURL()?.absoluteString{
                        completion(imageUrl)
                    }
                }
                })
        }
        
        
    }
}
