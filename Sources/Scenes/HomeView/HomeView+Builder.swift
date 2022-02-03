//
//  HomeView+Builder.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import UIKit

final class HomeViewBuilder {
    
    static func make() -> HomeViewController {
        let view = HomeViewController()
        let router = HomeViewRouter(view: view)
        let interactor = HomeViewInteractor(manager: app.network)
        let presenter = HomeViewPresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        view.configureUI()
        return view
    }
}
