//
//  AppDelegate.swift
//  RealApp
//
//  Created by Ashley, Alex on 5/21/18.
//  Copyright © 2018 Ashley, Alex. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RealApp",
            initialProperties: nil,
            launchOptions: nil
        )
        let controller = UIViewController()
        controller.view = rootView
        window!.rootViewController = controller
        window!.makeKeyAndVisible()

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}
