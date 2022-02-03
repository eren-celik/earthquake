//
//  HomeView+Protocols.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import UIKit
import struct NetworkModule.Response

//MARK: Interactor

protocol HomeViewInteractorProtocol: class {
    var delegate: HomeViewInteractorDelegate? { get set }
    func load()
    func selectQuakes(at index: Int)
}

enum HomeViewInteractorOutput {
    case setLoading(Bool)
    case showQuakes([Response])
    case showQuakeDetail(Response)
}

protocol HomeViewInteractorDelegate: class {
    func handleOutput(_ output: HomeViewInteractorOutput)
}

//MARK: Presenter

protocol HomeViewPresenterProtocol: class {
    func load()
    func selectQuake(at index: Int)
}

enum HomeViewPresenterOutput {
    case updateTitle(String)
    case setLoading(Bool)
    case showQuakes([Response])
}

//MARK: View

protocol HomeViewProtocol: class {
    func handleOutput(_ output: HomeViewPresenterOutput)
}

//MARK: Router

enum HomeViewRoute {
    case detail(Response)
}

protocol HomeViewRouterProtocol: class {
    func navigate(to route: HomeViewRoute)
}

