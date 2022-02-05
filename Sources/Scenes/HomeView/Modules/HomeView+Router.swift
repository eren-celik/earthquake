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
        case let .detail(response):
            let detailView = DetailViewBuilder.make(with: response)
            view.navigationController?.pushViewController(detailView, animated: true)
        }
    }

    func showAlert(with message: String) {
        let alerController = UIAlertController(title: "Error an occured", message: message, preferredStyle: .alert)
        alerController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.view.present(alerController, animated: true, completion: nil)
    }
}
