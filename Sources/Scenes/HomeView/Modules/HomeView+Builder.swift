//
//  HomeView+Builder.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import UIKit

final class HomeViewBuilder {
    
    static func make() -> HomeViewController {
        let view: HomeViewController = HomeViewController()
        let router: HomeViewRouter = HomeViewRouter(view: view)
        let interactor: HomeViewInteractor = HomeViewInteractor(manager: app.network)
        let presenter: HomeViewPresenter = HomeViewPresenter(view: view,
                                          interactor: interactor,
                                          router: router)
        view.presenter = presenter
        return view
    }
}
