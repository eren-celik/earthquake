//
//  AppRouter.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import UIKit

final class AppRouter {
    
    let window: UIWindow
    
    init() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    func start() {
        let viewController = HomeViewBuilder.make()
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
