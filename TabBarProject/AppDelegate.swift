//
//  AppDelegate.swift
//  TabBarProject
//
//  Created by BigSynt on 11.08.2022.
//  Copyright © 2022 BigSynt. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        configureTabBars()
        return true
    }
    
    func configureTabBars() {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let firstViewController = UIViewController()
        firstViewController.view.backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        firstViewController.title = "first"
        let firstTabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
        firstViewController.tabBarItem = firstTabBarItem
        
        
        let secondViewController = UIViewController()
        secondViewController.view.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        secondViewController.title = "second"
        let secondTabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        secondViewController.tabBarItem = secondTabBarItem
        
        let tabBar = UITabBarController()
        tabBar.setViewControllers([firstViewController, secondViewController], animated: true)
        
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
    }
    // MARK: UISceneSession Lifecycle

    


}

