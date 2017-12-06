//
//  AppDelegate.swift
//  BarCrowd
//
//  Created by Mason Mahoney on 11/14/17.
//  Copyright © 2017 Mason Mahoney. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import Firebase
import SendBirdSDK


let RED = UIColor(red: 209, green: 33, blue: 63, alpha: 1.0)
let PURPLE = UIColor.init(red: 173, green: 73, blue: 146, alpha: 1.0)
let YELLOW = UIColor.init(red: 252, green: 198, blue: 93, alpha: 1.0)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        application.statusBarStyle = UIStatusBarStyle.lightContent
        
        SBDMain.initWithApplicationId("EE76ED00-DDB5-42CF-97E0-72B4FD5F6B2E")
        
        FirebaseApp.configure()
        
        let navAppearance = UINavigationBar.appearance()
        navAppearance.barTintColor =  RED //.red
        navAppearance.tintColor = UIColor.orange
        navAppearance.isTranslucent = false
        navAppearance.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]
        
        FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
        
        return true
        
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        let handled = FBSDKApplicationDelegate.sharedInstance().application(app, open: url, sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as! String!, annotation: options[UIApplicationOpenURLOptionsKey.annotation])
        
        return handled
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

