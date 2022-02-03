//
//  HomeView+Interactor+Protocol.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import Foundation
import struct NetworkModule.Response

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
