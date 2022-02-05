//
//  HomeView+Protocols.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import UIKit

// Presenter -> View
protocol HomeViewProtocol: class {
    func handleOutput(_ output: HomeViewPresenterOutput)
}
