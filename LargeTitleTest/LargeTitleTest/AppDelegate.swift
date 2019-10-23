//
//  AppDelegate.swift
//  LargeTitleTest
//
//  Created by Andreas Wörner on 28.09.19.
//  Copyright © 2019 Andreas Wörner. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var nc: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if let window = window {
            let vc = FirstViewController()
            nc = UINavigationController(rootViewController: vc)
            // need to set this as early as possible to the navigation controller
            nc?.navigationBar.prefersLargeTitles = true
            window.rootViewController = nc
            window.makeKeyAndVisible()
        }
        
        return true
    }

}

