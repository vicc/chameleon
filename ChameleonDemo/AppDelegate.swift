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

    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {

        Chameleon.setGlobalThemeUsingPrimaryColor(.flatPlum,
            withSecondaryColor: .flatBlue,
            andContentStyle: .contrast)
        
        return true
    }


}

