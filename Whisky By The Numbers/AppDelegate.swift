//
//  AppDelegate.swift
//  Whisky By The Numbers
//
//  Created by Mike Healey on 4/13/16.
//  Copyright © 2016 ByNumbers. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        // Set status bar to light content
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent;
        
        // Set tabBar color
        UITabBar.appearance().barTintColor = UIColor.redDarkBG();
        // Set tabBar selected item color
        UITabBar.appearance().tintColor = UIColor.orangeHighlightText();
        
        // Set search bar tint and cancel button text color
        UISearchBar.appearance().barTintColor = UIColor.redDarkSearch();
        UISearchBar.appearance().tintColor = UIColor.orangeHighlightText();
        UIBarButtonItem.appearanceWhenContainedInInstancesOfClasses([UISearchBar.self]).setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orangeHighlightText()], forState: UIControlState.Normal);
        
        // Set table cell appearance
        UITableViewCell.appearance().backgroundColor = UIColor.redDark();
        
        // Set table view appearance
        UITableView.appearance().backgroundColor = UIColor.redDark();
        
        // Set nav bar appearance
        UINavigationBar.appearance().barTintColor = UIColor.redDarkBG();
        UINavigationBar.appearance().tintColor = UIColor.orangeHighlightText();
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.orangeHighlightText()];
        
        // Set text view appearance
        UITextView.appearance().backgroundColor = UIColor.redMediumDark();
        UITextView.appearance().textColor = UIColor.orangeHighlightText();

        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
}

extension UIColor {
    static func redDark() -> UIColor {
        return UIColor(red: 40/255, green: 11/255, blue: 13/255, alpha: 1.0)
    }
    
    static func redMediumDark() -> UIColor {
        return UIColor(red: 82/255, green: 18/255, blue: 5/255, alpha: 1.0)
    }
    
    static func redDarkSearch() -> UIColor {
        return UIColor(red: 40/255, green: 11/255, blue: 13/255, alpha: 0.8)
    }
    
    static func orangeHighlightText() -> UIColor {
        return UIColor(red: 223/255, green: 58/255, blue: 9/255, alpha: 1)
    }
    
    static func redDarkBG() -> UIColor {
        return UIColor(red: 40/255, green: 11/255, blue: 13/255, alpha: 0.3)
    }
    
    static func redMedium() -> UIColor {
        return UIColor(red: 147/255, green: 0/255, blue: 10/255, alpha: 1.0)
    }
    
    static func yellowHighlightText() -> UIColor {
        return UIColor(red: 247/255, green: 206/255, blue: 14/255, alpha: 1.0)
    }
    
    static func greyMedium() -> UIColor {
        return UIColor(red: 56/255, green: 61/255, blue: 64/255, alpha: 1.0)
    }
}

extension Int {
    func toString() -> String {
        let myString = self.description
        return myString
    }
}

extension Float {
    func toString() -> String {
        let myString = self.description
        return myString
    }
}
