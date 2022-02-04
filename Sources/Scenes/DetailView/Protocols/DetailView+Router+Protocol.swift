//
//  DetailView+Router+Protocol.swift
//  earthquake
//
//  Created by Eren  Çelik on 4.02.2022.
//

import Foundation

protocol DetailViewRouterProtocol: class {
    func popViewController()
    func navigateToWeb(with url: String)
}
