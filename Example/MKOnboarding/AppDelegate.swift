//
//  AppDelegate.swift
//  MKOnboarding
//
//  Created by mariokovacevic on 09/01/2018.
//  Copyright (c) 2018 mariokovacevic. All rights reserved.
//

import UIKit
import MKOnboarding

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // init
        var onboardingItems = [MKOnboardingItem]()
        onboardingItems.append(MKOnboardingItem(title: "Social for Your Dog", description: "Bring together dog owners and dog lovers from all over the world!", imageName: "onboardin_1"))
        onboardingItems.append(MKOnboardingItem(title: "Show up Your Dog’s Life", description: "Create your dogs profile & share their stories to all.", imageName: "onboardin_2"))
        onboardingItems.append(MKOnboardingItem(title: "Get stuff done easily", description: "Organize your dogs appointments, tasks and other activities with your family and sitters.", imageName: "onboardin_3"))
        onboardingItems.append(MKOnboardingItem(title: "Healthier, Happier Puppy", description: "Manage your best friend’s care beyond health records.", imageName: "onboardin_4"))
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        window?.rootViewController = MKOnboardingPageViewController(onboardingItems: onboardingItems)
        
        return true
    }

}

