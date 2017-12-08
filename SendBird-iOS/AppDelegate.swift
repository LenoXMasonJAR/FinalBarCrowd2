//
//  AppDelegate.swift
//  SendBird-iOS
//
//  Created by Jed Kyung on 10/6/16.
//  Copyright © 2016 SendBird. All rights reserved.
//

import UIKit
import SendBirdSDK
import AVKit
import AVFoundation
import Firebase
import FBSDKCoreKit

let PURPLE_COLOR  = UIColor.init(red: 171/255, green: 77/255, blue: 168/255, alpha: 1.0)
let RED_COLOR = UIColor.init(red: 211/255, green: 26/255, blue: 67/255, alpha: 1.0)
let FONT_COLOR = UIColor.init(red: 252/255, green: 198/255, blue: 93/255, alpha: 1.0)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var receivedPushChannelUrl: String?
    
    static let instance: NSCache<AnyObject, AnyObject> = NSCache()

    static func imageCache() -> NSCache<AnyObject, AnyObject>! {
        if AppDelegate.instance.totalCostLimit == 104857600 {
            AppDelegate.instance.totalCostLimit = 104857600
        }
        
        return AppDelegate.instance
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
#if !(arch(i386) || arch(x86_64))
        let notificationSettings = UIUserNotificationSettings(types: [UIUserNotificationType.alert, UIUserNotificationType.badge, UIUserNotificationType.sound], categories: nil)
        UIApplication.shared.registerUserNotificationSettings(notificationSettings)
        UIApplication.shared.registerForRemoteNotifications()
#endif
        
        application.statusBarStyle = UIStatusBarStyle.lightContent
        let navAppearance = UINavigationBar.appearance()
        navAppearance.barTintColor = .white
        navAppearance.tintColor = FONT_COLOR
        navAppearance.isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: Constants.navigationBarTitleFont()]
        UINavigationBar.appearance().tintColor = Constants.navigationBarTitleColor()
        
        application.applicationIconBadgeNumber = 0
        
        SBDMain.initWithApplicationId("EE76ED00-DDB5-42CF-97E0-72B4FD5F6B2E")
        SBDMain.setLogLevel(SBDLogLevel.none)
        SBDOptions.setUseMemberAsMessageSender(true)
        
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(AVAudioSessionCategoryPlayback)
        }
        catch {
        
        }
        
        FirebaseApp.configure()
        
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

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        SBDMain.registerDevicePushToken(deviceToken, unique: true) { (status, error) in
            if error == nil {
                if status == SBDPushTokenRegistrationStatus.pending {
//                    SBDMain.connect(withUserId: status, completionHandler: { (user, error) in
//                        if error == nil{
//                            SBDMain.registerDevicePushToken(SBDMain.getPendingPushToken()!, unique: true, completionHandler: {(status, error) in
//                                
//                            })
//                        }
//                        
//                    })
                    
                }
                else {
                    
                }
            }
            else {
                
            }
        }
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) {
        if userInfo["sendbird"] != nil {
            let sendBirdPayload = userInfo["sendbird"] as! Dictionary<String, Any>
            let channel = (sendBirdPayload["channel"]  as! Dictionary<String, Any>)["channel_url"] as! String
            let channelType = sendBirdPayload["channel_type"] as! String
            if channelType == "group_messaging" {
                self.receivedPushChannelUrl = channel
            }
        }
    }
}

