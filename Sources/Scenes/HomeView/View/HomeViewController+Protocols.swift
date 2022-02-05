//
//  HomeViewController+Protocols.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import UIKit

extension HomeViewController: HomeViewProtocol {
    func handleOutput(_ output: HomeViewPresenterOutput) {
        switch output {
        case .updateTitle(let title):
            self.title = title
        case .setLoading(let status):
            status ? hud.show(in: self.view) : hud.dismiss()
        case .showQuakes(let quake):
            self.quakes = quake
        }
    }
}
