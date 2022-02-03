//
//  HomeView+Router+Protocol.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import Foundation
import struct NetworkModule.Response

enum HomeViewRoute {
    case detail(Response)
}

protocol HomeViewRouterProtocol: class {
    func navigate(to route: HomeViewRoute)
}