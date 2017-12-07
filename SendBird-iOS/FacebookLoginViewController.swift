//
//  ViewController.swift
//  BarCrowd
//
//  Created by Mason Mahoney on 11/14/17.
//  Copyright © 2017 Mason Mahoney. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import Firebase
import FirebaseDatabase


class FacebookLoginViewController: BarsLoginViewController, FBSDKLoginButtonDelegate {
    

    fileprivate var ref: DatabaseReference?
    @IBOutlet weak var findBars: UIButton!
    
    
    @IBOutlet weak var barCrowdLogo: UIImageView!
    @IBAction func findBars(_ sender: Any) {
         self.performSegue(withIdentifier: "segueToBars", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // dismiss keyboard when tapping outside oftext fields
        let detectTouch = UITapGestureRecognizer(target: self, action:
            #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(detectTouch)
        
        
        findBars.isHidden = false
        
        let loginButtonFB = FBSDKLoginButton()
        loginButtonFB.readPermissions = ["email", "public_profile"]
        loginButtonFB.delegate = self
        loginButtonFB.frame = CGRect(x: 16, y: 300, width: view.frame.width - 32, height: 50)
       // loginButtonFB.center = self.view.center
//        let myConstraint =
//            NSLayoutConstraint(item: loginButtonFB,
//                               attribute: NSLayoutAttribute.top,
//                               relatedBy: NSLayoutRelation.equal,
//                               toItem: self.view,
//                               attribute: NSLayoutAttribute.bottom,
//                               multiplier: 1.0,
//                               constant: 20)
        
        view.addSubview(loginButtonFB)
        //self.view.addConstraint(myConstraint)
        //loginButtonFB.addConstraint(myConstraint)
        
        

    }
    
    func handleImageTap(){
        
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        showEmailAddress()
    }
    
    @objc func handleCustomFBLogin(){
        FBSDKLoginManager().logIn(withReadPermissions: ["email", "public_profile"], from: self)
        {(result, err) in
            if err != nil{
                print("Custom FB Login Failed:", err ?? "")
                return
            }
            self.showEmailAddress()
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Did logout with facebook")
    }
    
    func showEmailAddress(){
        let accessToken = FBSDKAccessToken.current()
        guard let accessTokenString = accessToken?.tokenString else
        {return}
        let credentials =
            FacebookAuthProvider.credential(withAccessToken: accessTokenString )
        Auth.auth().signIn(with:credentials){
            (user, error) in
            if error != nil{
                print("Something went wrong with our FB user: ", error ?? "")
                return
            }
            self.findBars.isHidden = false
            print("Successful login with our user ", user ?? "")
            
        }

        
        
        FBSDKGraphRequest(graphPath: "/me", parameters: ["fields":"id, name, email"]).start{
            (connection, result, err) in
            if err != nil {
                print("Failed to start graph request:", err ?? "")
                return
            }
            print(result ?? "")
        }
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

