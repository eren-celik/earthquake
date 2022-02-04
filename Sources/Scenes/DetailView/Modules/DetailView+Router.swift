//
//  DetailView+Router.swift
//  earthquake
//
//  Created by Eren  Çelik on 4.02.2022.
//

import UIKit
import SafariServices

final class DetailViewRouter {
    
    unowned let view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
}

extension DetailViewRouter: DetailViewRouterProtocol {
    
    func popViewController() {
        view.navigationController?.popViewController(animated: true)
    }
    
    func navigateToWeb(with url: String) {
        if let url = URL(string: url) {
            let vc = SFSafariViewController(url: url)
            view.present(vc, animated: true, completion: nil)
        }
    }
}
