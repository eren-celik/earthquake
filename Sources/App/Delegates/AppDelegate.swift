//
//  AppDelegate.swift
//  dwa
//
//  Created by Eren  Çelik on 1.02.2022.
//
import UIKit
import NetworkModule

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        app.router.start()
        return true
    }
}
