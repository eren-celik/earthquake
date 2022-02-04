//
//  HomeView+Router+Protocol.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import Foundation
import struct NetworkModule.Response

//Presenter -> Router

enum HomeViewRoute {
    case detail(Response)
}

protocol HomeViewRouterProtocol: class {
    func navigate(to route: HomeViewRoute)
    func showAlert(with message: String)
}
