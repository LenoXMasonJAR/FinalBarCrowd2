//
//  CrowdsViewController.swift
//  
//
//  Created by Mason Mahoney on 12/4/17.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage
//import FirebaseDatabase.unitypackage

class CrowdsViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    let ref = Database.database().reference()
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enterCrowds(_ sender: Any) {
        if usernameTextField.text == "" || passwordTextField.text == ""{
            print("please Enter username")
        }else{
                
            Auth.auth().createUser(withEmail: usernameTextField.text!, password: passwordTextField.text!){ (user, error) in
                if error != nil{
                    print("There was an error", error ?? "")
                }else{
                    
                    UserService.storeImages(imageView: self.profileImageView, storageFielname: "profileImage", completion:{ (profileUrl) in
                        let properties: [String: String] = ["Fullname": self.usernameTextField.text!, "UserName": self.passwordTextField.text!, "userPhoto": profileUrl]
                        self.ref.child("users").child((user?.uid)!).setValue(properties)
                        
                    })
                    
                }
            }
        }
    }
    
    @IBOutlet weak var profileImageView: UIImageView!
    func setUpViews(){
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2.75
        profileImageView.layer.masksToBounds = true
        profileImageView.clipsToBounds = true
        profileImageView.isUserInteractionEnabled = true
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleImageTap))
        profileImageView.addGestureRecognizer(tapGestureRecognizer)
    }
    @objc func handleImageTap(){
        imagePicker.allowsEditing = false
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            profileImageView.image = pickedImage
            dismiss(animated:true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    

    

   
    
}
