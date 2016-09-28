//
//  AppDelegate.swift
//  ChameleonDemo
//
//  Created by Vicc Alexander on 9/25/15.
//  Copyright © 2015 Vicc Alexander. All rights reserved.
//

import UIKit
import Chameleon

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        Chameleon.setGlobalThemeUsingPrimaryColor(FlatMint(),
            withSecondaryColor: FlatBlue(),
            andContentStyle: UIContentStyle.Contrast)
        
        return true
    }


}

