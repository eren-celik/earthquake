//
//  HomeView+Router.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import UIKit

final class HomeViewRouter: HomeViewRouterProtocol {
    
    unowned let view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
    func navigate(to route: HomeViewRoute) {
        switch route {
        case .detail(_):
            break
        }
    }
}
